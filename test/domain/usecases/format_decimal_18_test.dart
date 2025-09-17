import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:currency_pwa/domain/usecases/format_decimal_18.dart';

void main() {
  late FormatDecimal18 formatDecimal18;

  setUp(() {
    formatDecimal18 = FormatDecimal18();
  });

  test('should format decimal with 18 places', () {
    final result = formatDecimal18(Decimal.parse('1.234'));

    expect(result, '1.234000000000000000');
  });

  test('should format integer with 18 places', () {
    final result = formatDecimal18(Decimal.fromInt(123));

    expect(result, '123.000000000000000000');
  });
}
