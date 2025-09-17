import 'dart:ui' as ui show FontFeature;
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../domain/usecases/format_decimal_18.dart';

class RatesListItem extends StatelessWidget {
  const RatesListItem({super.key, required this.code, required this.value, this.showDivider = true});

  final String code;
  final Decimal value;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    final isUsd = code == 'USD';
    final formatter = GetIt.I<FormatDecimal18>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: isUsd ? Colors.green.shade100 : Colors.blue.shade100,
                child: Text(code.substring(0, 1), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(code, style: const TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 2),
                    Text('1 $code → USD', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                  ],
                ),
              ),
              Text(
                formatter(value),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFeatures: [const ui.FontFeature.tabularFigures()],
                ),
              ),
            ],
          ),
        ),
        if (showDivider) const Divider(height: 1),
      ],
    );
  }
}

