import 'package:decimal/decimal.dart';

class FormatDecimal18 {
  String call(Decimal d) {
    final s = d.toString();
    final dot = s.indexOf('.');
    if (dot == -1) return '$s.000000000000000000';
    final int end = (dot + 1 + 18) <= s.length ? (dot + 1 + 18) : s.length;
    final frac = s.substring(dot + 1, end);
    return '${s.substring(0, dot)}.${frac.padRight(18, '0')}';
  }
}

