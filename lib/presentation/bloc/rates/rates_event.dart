part of 'rates_bloc.dart';

@freezed
class RatesEvent with _$RatesEvent {
  const factory RatesEvent.requested() = RatesRequested;
  const factory RatesEvent.refreshRequested() = RatesRefreshRequested;
}