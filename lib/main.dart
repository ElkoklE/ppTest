import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injector.dart';
import 'presentation/bloc/rates/rates_bloc.dart';
import 'presentation/bloc/auth/auth_bloc.dart';
import 'presentation/bloc/converter/converter_bloc.dart';
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
        BlocProvider(create: (_) => sl<RatesBloc>()),
        BlocProvider(create: (_) => sl<AuthBloc>()),
        BlocProvider(create: (_) => sl<ConverterBloc>()),
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
