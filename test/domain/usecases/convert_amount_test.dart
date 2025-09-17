import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:currency_pwa/domain/usecases/convert_amount.dart';

void main() {
  late ConvertAmount convertAmount;

  setUp(() {
    convertAmount = const ConvertAmount();
  });

  test('should convert amount correctly', () {
    final result = convertAmount(
      amount: Decimal.fromInt(100),
      fromUsd: Decimal.parse('1'),
      toUsd: Decimal.parse('0.5'),
    );

    expect(result, Decimal.parse('206'));
  });

  test('should convert amount correctly with fee', () {
    final result = convertAmount(
      amount: Decimal.fromInt(100),
      fromUsd: Decimal.parse('1'),
      toUsd: Decimal.parse('0.5'),
      feePercent: Decimal.fromInt(10),
    );

    expect(result, Decimal.parse('220'));
  });
}
