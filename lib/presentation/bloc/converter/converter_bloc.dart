import 'package:bloc/bloc.dart';
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rational/rational.dart';

import '../../../domain/constants/fiat_currencies.dart';
import '../../../domain/usecases/convert_amount.dart';
import '../../../domain/usecases/format_decimal_18.dart';
import '../../../domain/usecases/format_fiat_floor2.dart';

part 'converter_event.dart';
part 'converter_state.dart';
part 'converter_bloc.freezed.dart';

class ConverterBloc extends Bloc<ConverterEvent, ConverterState> {
  ConverterBloc({
    required this.convertAmount,
    required this.formatDecimal18,
    required this.formatFiatFloor2,
  }) : super(const ConverterState()) {
    on<_FromCurrencyChanged>(_onFromCurrencyChanged);
    on<_ToCurrencyChanged>(_onToCurrencyChanged);
    on<_AmountChanged>(_onAmountChanged);
    on<_SwapCurrencies>(_onSwapCurrencies);
    on<_RatesUpdated>(_onRatesUpdated);
  }

  final ConvertAmount convertAmount;
  final FormatDecimal18 formatDecimal18;
  final FormatFiatFloor2 formatFiatFloor2;

  void _onFromCurrencyChanged(_FromCurrencyChanged event, Emitter<ConverterState> emit) {
    emit(_calculate(state.copyWith(from: event.currency)));
  }

  void _onToCurrencyChanged(_ToCurrencyChanged event, Emitter<ConverterState> emit) {
    emit(_calculate(state.copyWith(to: event.currency)));
  }

  void _onAmountChanged(_AmountChanged event, Emitter<ConverterState> emit) {
    emit(_calculate(state.copyWith(amount: event.amount)));
  }
  
  void _onSwapCurrencies(_SwapCurrencies event, Emitter<ConverterState> emit) {
    final from = state.from;
    final to = state.to;
    emit(_calculate(state.copyWith(from: to, to: from)));
  }

  void _onRatesUpdated(_RatesUpdated event, Emitter<ConverterState> emit) {
    emit(_calculate(state.copyWith(rates: event.rates, from: state.from ?? 'USD', to: state.to ?? 'BTC')));
  }

  ConverterState _calculate(ConverterState state) {
    final ratesMap = state.rates;
    final from = state.from;
    final to = state.to;
    final amountText = state.amount;

    Decimal? amount;
    try {
      final text = amountText.replaceAll(',', '.');
      if (text.isNotEmpty) {
        amount = Decimal.parse(text);
      }
    } catch (_) {
      // ignore
    }

    if (amount != null && from != null && to != null && from != to && ratesMap != null && ratesMap.isNotEmpty) {
      final fromUsd = ratesMap[from]!;
      final toUsd = ratesMap[to]!;
      final withFee = convertAmount(amount: amount, fromUsd: fromUsd, toUsd: toUsd, feePercent: Decimal.parse('3'));

      final amountDisplay = '${amount.toString()} ${from}';
      String resultDisplay;
      String footerDisplay;

      if (fiatCurrencies.contains(to)) {
        final floor2 = formatFiatFloor2;
        final Rational baseRatio = withFee / Decimal.parse('1.03');
        final Decimal baseAmount = baseRatio.toDecimal(scaleOnInfinitePrecision: 40);
        final base = floor2(baseAmount);
        final fee = floor2(withFee);
        resultDisplay = '$fee ${to}';
        footerDisplay = '($base ${to} + 3%)';
      } else {
        final trunc18 = formatDecimal18;
        final Rational baseRatio = withFee / Decimal.parse('1.03');
        final Decimal baseAmount = baseRatio.toDecimal(scaleOnInfinitePrecision: 40);
        final base = trunc18(baseAmount);
        final fee = trunc18(withFee);
        resultDisplay = '$fee ${to}';
        footerDisplay = '($base ${to} + 3%)';
      }
      return state.copyWith(
        amountDisplay: amountDisplay,
        resultDisplay: resultDisplay,
        footerDisplay: footerDisplay,
      );
    }
    return state.copyWith(
      amountDisplay: null,
      resultDisplay: null,
      footerDisplay: null,
    );
  }
}
