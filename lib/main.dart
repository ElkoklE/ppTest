import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injector.dart';
import 'presentation/bloc/rates/rates_bloc.dart';
import 'presentation/bloc/auth/auth_bloc.dart';
import 'domain/usecases/get_rates_against_usd.dart';
import 'domain/usecases/login.dart';
import 'presentation/ui/login_page.dart';
import 'presentation/ui/home_shell.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const CurrencyApp());
}

class CurrencyApp extends StatelessWidget {
  const CurrencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              RatesBloc(sl<GetRatesAgainstUsd>(), autoRefresh: const Duration(seconds: 30)),
        ),
        BlocProvider(
          create: (_) => AuthBloc(sl<LoginUseCase>()),
        ),
      ],
      child: MaterialApp(
        title: 'Currency PWA',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return state.when(
            loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
            authenticated: () => const HomeShell(),
            unauthenticated: () => const LoginPage(),
            failure: (_) => const LoginPage(),
          );
        }),
      ),
    );
  }
}
