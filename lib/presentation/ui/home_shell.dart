import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth/auth_bloc.dart';
import 'rates_page.dart';
import 'converter_page.dart';
import '../bloc/rates/rates_bloc.dart';
import 'widgets/top_bar.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const RatesPage(),
      const ConverterPage(),
    ];

    return Scaffold(
      appBar: _index == 0
          ? TopBar.rates(
              onRefresh: () => context.read<RatesBloc>().add(const RatesEvent.refreshRequested()),
              onLogout: () => context.read<AuthBloc>().add(const AuthEvent.logoutRequested()),
            )
          : TopBar.converter(
              onLogout: () => context.read<AuthBloc>().add(const AuthEvent.logoutRequested()),
            ),
      body: pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) {
          if (i == 2) return;
          setState(() => _index = i);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.list_alt_outlined), selectedIcon: Icon(Icons.list_alt), label: 'Rates'),
          NavigationDestination(icon: Icon(Icons.compare_arrows_outlined), selectedIcon: Icon(Icons.compare_arrows), label: 'Convert'),
        ],
      ),
    );
  }
}