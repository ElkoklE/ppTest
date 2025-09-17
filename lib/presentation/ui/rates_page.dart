import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/rates/rates_bloc.dart';

import 'rates/widgets/rates_list_item.dart';

class RatesPage extends StatelessWidget {
  const RatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatesBloc, RatesState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Ошибка: $message'),
                const SizedBox(height: 8),
                FilledButton(
                  onPressed: () =>
                      context.read<RatesBloc>().add(const RatesEvent.refreshRequested()),
                  child: const Text('Повторить'),
                ),
              ],
            ),
          ),
          loaded: (data) {
            final entries = (data).entries.toList()
              ..sort((a, b) => a.key.compareTo(b.key));

            return RefreshIndicator(
              onRefresh: () async {
                context.read<RatesBloc>().add(const RatesEvent.refreshRequested());
              },
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: entries.length,
                      itemBuilder: (context, index) {
                        final e = entries[index];
                        return RatesListItem(
                          code: e.key,
                          value: e.value,
                          showDivider: index != entries.length - 1,
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
