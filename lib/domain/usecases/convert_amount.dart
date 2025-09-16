import 'package:decimal/decimal.dart';
import 'package:rational/rational.dart';

class ConvertAmount {
  const ConvertAmount();

  Decimal call({
    required Decimal amount,
    required Decimal fromUsd,
    required Decimal toUsd,
    Decimal? feePercent,
  }) {
    final Decimal amountInUsd = amount * fromUsd;
    final Rational ratio = amountInUsd / toUsd;
    final Decimal amountInTo = ratio.toDecimal(scaleOnInfinitePrecision: 40);

    final Decimal feePct = feePercent ?? Decimal.parse('3');
    final Decimal feeMultiplier = Decimal.parse('1') + (feePct * Decimal.parse('0.01'));
    return amountInTo * feeMultiplier;
  }
}