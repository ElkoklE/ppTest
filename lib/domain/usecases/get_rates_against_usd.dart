import 'package:decimal/decimal.dart';

import '../repositories/rates_repository.dart';

class GetRatesAgainstUsd {
  GetRatesAgainstUsd(this._repository);

  final RatesRepository _repository;

  Future<Map<String, Decimal>> call() {
    return _repository.getRatesAgainstUsd();
  }
}

