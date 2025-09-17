part of 'converter_bloc.dart';

@freezed
class ConverterState with _$ConverterState {
  const factory ConverterState({
    String? from,
    String? to,
    @Default('1') String amount,
    Map<String, Decimal>? rates,
    String? amountDisplay,
    String? resultDisplay,
    String? footerDisplay,
  }) = _ConverterState;
}
