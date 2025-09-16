import 'package:decimal/decimal.dart';

class FormatFiatFloor2 {
  String call(Decimal value) {
    final s = value.toString();
    final isNeg = s.startsWith('-');
    final base = isNeg ? s.substring(1) : s;
    final dot = base.indexOf('.');
    if (dot == -1) return '${isNeg ? '-' : ''}$base.00';
    final fracAll = base.substring(dot + 1);
    final frac2 = fracAll.length >= 2 ? fracAll.substring(0, 2) : fracAll.padRight(2, '0');
    if (isNeg && fracAll.length > 2 && fracAll.substring(2).replaceAll('0', '').isNotEmpty) {
      final intPart = int.parse(base.substring(0, dot));
      final cents = int.parse(frac2);
      if (cents == 0) return '-${intPart + 1}.00';
      final newCents = cents + 1;
      return '-$intPart.${newCents.toString().padLeft(2, '0')}';
    }
    return '${isNeg ? '-' : ''}${base.substring(0, dot)}.$frac2';
  }
}

