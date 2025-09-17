import 'package:get_it/get_it.dart';

import '../../data/repositories/rates_repository_impl.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/rates_repository.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/get_rates_against_usd.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/format_decimal_18.dart';
import '../../domain/usecases/format_fiat_floor2.dart';
import '../../domain/usecases/convert_amount.dart';
import '../../presentation/bloc/auth/auth_bloc.dart';
import '../../presentation/bloc/converter/converter_bloc.dart';
import '../../presentation/bloc/rates/rates_bloc.dart';
import '../../services/rates_service.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  sl.registerLazySingleton<RatesService>(() => RatesService());

  sl.registerLazySingleton<RatesRepository>(() => RatesRepositoryImpl(sl()));
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  sl.registerLazySingleton<GetRatesAgainstUsd>(() => GetRatesAgainstUsd(sl()));
  sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(sl()));
  sl.registerLazySingleton<FormatDecimal18>(() => FormatDecimal18());
  sl.registerLazySingleton<FormatFiatFloor2>(() => FormatFiatFloor2());
  sl.registerLazySingleton<ConvertAmount>(() => const ConvertAmount());

  sl.registerFactory(() => AuthBloc(sl()));
  sl.registerFactory(() => RatesBloc(sl(), autoRefresh: const Duration(seconds: 30)));
  sl.registerFactory(
    () => ConverterBloc(
      convertAmount: sl(),
      formatDecimal18: sl(),
      formatFiatFloor2: sl(),
    ),
  );
}