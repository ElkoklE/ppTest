import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:currency_pwa/domain/usecases/format_fiat_floor2.dart';

void main() {
  late FormatFiatFloor2 formatFiatFloor2;

  setUp(() {
    formatFiatFloor2 = FormatFiatFloor2();
  });

  test('should format positive decimal with 2 places flooring', () {
    final result = formatFiatFloor2(Decimal.parse('1.239'));

    expect(result, '1.23');
  });

  test('should format positive integer with 2 places', () {
    final result = formatFiatFloor2(Decimal.fromInt(123));

    expect(result, '123.00');
  });

  test('should format negative decimal with 2 places flooring', () {
    final result = formatFiatFloor2(Decimal.parse('-1.239'));

    expect(result, '-1.24');
  });
}
