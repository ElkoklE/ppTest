import 'package:currency_pwa/core/di/injector.dart';
import 'package:currency_pwa/domain/repositories/auth_repository.dart';
import 'package:currency_pwa/domain/repositories/rates_repository.dart';
import 'package:currency_pwa/domain/usecases/get_rates_against_usd.dart';
import 'package:currency_pwa/domain/usecases/login.dart';
import 'package:currency_pwa/services/rates_service.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

import 'package:currency_pwa/main.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockRatesRepository extends Mock implements RatesRepository {}

class MockGetRatesAgainstUsd extends Mock implements GetRatesAgainstUsd {}

class MockRatesService extends Mock implements RatesService {}

void main() {
  setUp(() async {
    await sl.reset();
    sl.registerLazySingleton<AuthRepository>(() => MockAuthRepository());
    sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(sl()));
    sl.registerLazySingleton<RatesService>(() => MockRatesService());
    sl.registerLazySingleton<RatesRepository>(() => MockRatesRepository());
    sl.registerLazySingleton<GetRatesAgainstUsd>(
        () => MockGetRatesAgainstUsd());
  });

  testWidgets('Renders login page smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const CurrencyApp());
    await tester.pumpAndSettle();

    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
  });
}
