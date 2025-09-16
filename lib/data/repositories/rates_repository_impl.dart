import 'package:decimal/decimal.dart';

import '../../domain/repositories/rates_repository.dart';
import '../../services/rates_service.dart';

class RatesRepositoryImpl implements RatesRepository {
  RatesRepositoryImpl(this._service);

  final RatesService _service;

  @override
  Future<Map<String, Decimal>> getRatesAgainstUsd() {
    return _service.fetchAgainstUsd();
  }
}