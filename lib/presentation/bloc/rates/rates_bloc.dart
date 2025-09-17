import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/get_rates_against_usd.dart';

part 'rates_event.dart';
part 'rates_state.dart';
part 'rates_bloc.freezed.dart';

class RatesBloc extends Bloc<RatesEvent, RatesState> {
  RatesBloc(this._getRates, {this.autoRefresh}) : super(const RatesState.loading()) {
    on<RatesRequested>(_onRequested);
    on<RatesRefreshRequested>(_onRefreshRequested);

    add(const RatesEvent.requested());

    if (autoRefresh != null) {
      _timer = Timer.periodic(autoRefresh!, (_) => add(const RatesEvent.refreshRequested()));
    }
  }

  final GetRatesAgainstUsd _getRates;
  final Duration? autoRefresh;
  Timer? _timer;

  Future<void> _onRequested(RatesRequested event, Emitter<RatesState> emit) async {
    emit(const RatesState.loading());
    try {
      final Map<String, Decimal> data = await _getRates();
      emit(RatesState.loaded(data));
    } catch (e) {
      emit(RatesState.error(e.toString()));
    }
  }

  Future<void> _onRefreshRequested(
    RatesRefreshRequested event,
    Emitter<RatesState> emit,
  ) async {
    emit(const RatesState.loading());
    try {
      final Map<String, Decimal> data = await _getRates();
      emit(RatesState.loaded(data));
    } catch (e) {
      emit(RatesState.error(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}