part of 'rates_bloc.dart';

@freezed
class RatesState with _$RatesState {
  const factory RatesState.loading() = RatesLoading;
  const factory RatesState.loaded(Map<String, Decimal> data) = RatesLoaded;
  const factory RatesState.error(String message) = RatesError;
}