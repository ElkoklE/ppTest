import 'package:decimal/decimal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/converter/converter_bloc.dart';
import '../bloc/rates/rates_bloc.dart';
import 'converter/widgets/converter_picker_field.dart';
import 'converter/widgets/converter_result_card.dart';
import 'converter/widgets/currency_picker.dart';

class ConverterPage extends StatelessWidget {
  const ConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final amountController = TextEditingController();

    return BlocListener<RatesBloc, RatesState>(
      listener: (context, state) {
        state.mapOrNull(
          loaded: (loaded) =>
              context.read<ConverterBloc>().add(ConverterEvent.ratesUpdated(loaded.data)),
        );
      },
      child: BlocBuilder<ConverterBloc, ConverterState>(
        builder: (context, state) {
          amountController.text = state.amount;
          final ratesMap = state.rates ?? {};
          final currencies = ratesMap.keys.toList()..sort();

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
                            value: state.from,
                            onTap: () => showCurrencyPicker(
                              context,
                              currencies,
                              state.from,
                              (v) => context
                                  .read<ConverterBloc>()
                                  .add(ConverterEvent.fromCurrencyChanged(v)),
                            ),
                          ),
                          const SizedBox(height: 12),
                          ConverterPickerField(
                            label: 'To',
                            value: state.to,
                            onTap: () => showCurrencyPicker(
                              context,
                              currencies,
                              state.to,
                              (v) => context
                                  .read<ConverterBloc>()
                                  .add(ConverterEvent.toCurrencyChanged(v)),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Divider(),
                          SizedBox(
                            height: 44,
                            child: CupertinoTextField(
                              controller: amountController,
                              placeholder: '0.00',
                              keyboardType:
                                  const TextInputType.numberWithOptions(decimal: true),
                              onChanged: (v) => context
                                  .read<ConverterBloc>()
                                  .add(ConverterEvent.amountChanged(v)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Theme.of(context).dividerColor.withOpacity(0.6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (state.from == state.to && state.from != null)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Cannot convert identical pairs',
                      style: TextStyle(color: Colors.red)),
                ),
              context.watch<RatesBloc>().state.maybeWhen(
                    loading: () => const LinearProgressIndicator(minHeight: 2),
                    orElse: () => const SizedBox.shrink(),
                  ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                child: Column(
                  children: [
                    ConverterResultCard(
                      amountText: state.amountDisplay ??
                          (amountController.text.isEmpty ? '1' : amountController.text),
                      resultValueText: state.resultDisplay ?? '',
                      footerText: state.footerDisplay ?? '',
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
