import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class RatesService {
  static const String _endpoint = 'https://api.coingate.com/api/v2/rates';

  Future<Map<String, Map<String, Decimal>>> fetchMerchantRates() async {
    final response = await _fetch(_endpoint);
    final dynamic data = jsonDecode(response.body);
    return _parseMerchant(data);
  }

  Future<http.Response> _fetch(String endpoint) async {
    try {
      final response = await http.get(Uri.parse(endpoint));
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to load rates: HTTP ${response.statusCode}');
      }
    } catch (e) {
      if (kIsWeb) {
        final proxied = 'https://corsproxy.io/?${Uri.encodeComponent(endpoint)}';
        final response = await http.get(Uri.parse(proxied));
        if (response.statusCode == 200) {
          return response;
        } else {
          throw Exception('Failed to load rates: HTTP ${response.statusCode}');
        }
      } else {
        rethrow;
      }
    }
  }

  Map<String, Map<String, Decimal>> _parseMerchant(dynamic data) {
    final merchant = data['merchant'] as Map<String, dynamic>;

    final Map<String, Map<String, Decimal>> result = {};
    for (final entry in merchant.entries) {
      final String base = entry.key;
      final Map<String, dynamic> targets =
          Map<String, dynamic>.from(entry.value as Map);
      result[base] = targets.map(
        (k, v) => MapEntry(k, Decimal.parse((v as Object).toString())),
      );
    }
    return result;
  }

  Future<Map<String, Decimal>> fetchAgainstUsd() async {
    final all = await fetchMerchantRates();
    final Map<String, Decimal> againstUsd = {};
    for (final entry in all.entries) {
      final base = entry.key;
      final targets = entry.value;
      if (targets.containsKey('USD')) {
        againstUsd[base] = targets['USD']!;
      }
    }

    if (!againstUsd.containsKey('USD')) {
      againstUsd['USD'] = Decimal.one;
    }
    return againstUsd;
  }
}