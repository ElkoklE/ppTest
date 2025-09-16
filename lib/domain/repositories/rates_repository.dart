import 'package:decimal/decimal.dart';

abstract class RatesRepository {
  Future<Map<String, Decimal>> getRatesAgainstUsd();
}

