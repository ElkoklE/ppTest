import 'package:decimal/decimal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rational/rational.dart';
import '../../domain/constants/fiat_currencies.dart';

import '../bloc/rates/rates_bloc.dart';

import 'converter/widgets/converter_picker_field.dart';
import 'converter/widgets/converter_result_card.dart';
import 'converter/widgets/currency_picker.dart';
import 'package:get_it/get_it.dart';
import '../../domain/usecases/convert_amount.dart';
import '../../domain/usecases/format_decimal_18.dart';
import '../../domain/usecases/format_fiat_floor2.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  String? _from;
  String? _to;
  final TextEditingController _amountController = TextEditingController(text: '1');
  Map<String, Decimal>? _latestRates;

  @override
  void initState() {
    super.initState();
    _amountController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  Decimal? _parseAmount() {
    try {
      final text = _amountController.text.replaceAll(',', '.');
      if (text.isEmpty) return Decimal.zero;
      return Decimal.parse(text);
    } catch (_) {
      return null;
    }
  }

  ({String? amountDisplay, String? resultDisplay, String? footerDisplay}) _calculateConversion(Map<String, Decimal> ratesMap) {
    String? amountDisplay;
    String? resultDisplay;
    String? footerDisplay;

    final amount = _parseAmount();
    if (amount != null && _from != null && _to != null && _from != _to && ratesMap.isNotEmpty) {
      final fromUsd = ratesMap[_from!]!;
      final toUsd = ratesMap[_to!]!;
      final convert = GetIt.I<ConvertAmount>();
      final withFee = convert(amount: amount, fromUsd: fromUsd, toUsd: toUsd, feePercent: Decimal.parse('3'));

      amountDisplay = '${amount.toString()} ${_from!}';
      if (fiatCurrencies.contains(_to)) {
        final floor2 = GetIt.I<FormatFiatFloor2>();
        final Rational baseRatio = withFee / Decimal.parse('1.03');
        final Decimal baseAmount = baseRatio.toDecimal(scaleOnInfinitePrecision: 40);
        final base = floor2(baseAmount);
        final fee = floor2(withFee);
        resultDisplay = '$fee ${_to!}';
        footerDisplay = '($base ${_to!} + 3%)';
      } else {
        final trunc18 = GetIt.I<FormatDecimal18>();
        final Rational baseRatio = withFee / Decimal.parse('1.03');
        final Decimal baseAmount = baseRatio.toDecimal(scaleOnInfinitePrecision: 40);
        final base = trunc18(baseAmount);
        final fee = trunc18(withFee);
        resultDisplay = '$fee ${_to!}';
        footerDisplay = '($base ${_to!} + 3%)';
      }
    }
    return (amountDisplay: amountDisplay, resultDisplay: resultDisplay, footerDisplay: footerDisplay);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatesBloc, RatesState>(builder: (context, state) {
      state.when(
        loading: () {},
        loaded: (data) {
          _latestRates = data;
        },
        error: (message) {},
      );
      final ratesMap = _latestRates ?? {};
      final currencies = ratesMap.keys.toList()..sort();
      _from ??= 'USD';
      _to ??= 'BTC';

      final conversion = _calculateConversion(ratesMap);
      final amountDisplay = conversion.amountDisplay;
      final resultDisplay = conversion.resultDisplay;
      final footerDisplay = conversion.footerDisplay;

      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConverterPickerField(
                        label: 'From',
                        value: _from,
                        onTap: () => showCurrencyPicker(context, currencies, _from, (v) => setState(() => _from = v)),
                      ),
                      const SizedBox(height: 12),
                      ConverterPickerField(
                        label: 'To',
                        value: _to,
                        onTap: () => showCurrencyPicker(context, currencies, _to, (v) => setState(() => _to = v)),
                      ),
                      const SizedBox(height: 12),
                      const Divider(), 
                 
                      SizedBox(
                        height: 44,
                        child: CupertinoTextField(
                         
                          controller: _amountController,
                          placeholder: '0.00',
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Theme.of(context).dividerColor.withOpacity(0.6)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (_from == _to && _from != null)
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Нельзя конвертировать одинаковые пары', style: TextStyle(color: Colors.red)),
            ),
          if (state is RatesLoading)
            const LinearProgressIndicator(minHeight: 2),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
            child: Column(
              children: [
                ConverterResultCard(
                  amountText: amountDisplay ?? (_amountController.text.isEmpty ? '1' : _amountController.text),
                  resultValueText: resultDisplay ?? '',
                  footerText: footerDisplay ?? '',
                ),
              ],
            ),
          ),
        ],
      );
       
    });
  }

  
}