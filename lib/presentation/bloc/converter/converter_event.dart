part of 'converter_bloc.dart';

@freezed
class ConverterEvent with _$ConverterEvent {
  const factory ConverterEvent.fromCurrencyChanged(String currency) = _FromCurrencyChanged;
  const factory ConverterEvent.toCurrencyChanged(String currency) = _ToCurrencyChanged;
  const factory ConverterEvent.amountChanged(String amount) = _AmountChanged;
  const factory ConverterEvent.swapCurrencies() = _SwapCurrencies;
  const factory ConverterEvent.ratesUpdated(Map<String, Decimal> rates) = _RatesUpdated;
}
