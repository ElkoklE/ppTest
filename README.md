#ppTest

Архитектура: Clean Architecture + BLoC + DI (`get_it`).

## Требования
- Flutter SDK 3.16.x (Dart 3.2.x)
- Chrome/Chromium для запуска web


## Установка зависимостей
```bash
flutter pub get
```

## Запуск (дебаг)
```bash
flutter run -d chrome
```
- В проекте (VS Code) настроены дополнительные флаги для Chrome (`--web-browser-flag --disable-web-security`) — это помогает обойти CORS в dev.
- Если запускаете не из VS Code, стартуйте Chrome вручную с этими флагами или используйте собственный прокси.

## Сборка production
```bash
flutter build web
```


## Авторизация
- Логин: `demo`
- Пароль: `demo`


## Архитектура
- `lib/domain` — репозитории и юзкейсы: `GetRatesAgainstUsd`, `ConvertAmount`, `FormatDecimal18`, `FormatFiatFloor2`, `LoginUseCase`.
- `lib/data` — реализации и сервисы: `RatesRepositoryImpl` + `RatesService`, `AuthRepositoryImpl`.
- `lib/presentation` — `RatesBloc`, `AuthBloc`.
- `lib/core/di/injector.dart` — регистрация зависимостей (`get_it`).
- `lib/ui` — экраны и виджеты (Cupertino‑стиль конвертера, список курсов).

## Тестирование (ручные сценарии)
1. Запустите приложение, войдите `demo/demo`.
2. Убедитесь, что на `Rates` виден список курсов, работает обновление и автообновление.
3. Перейдите в `Convert`, выберите From/To, введите сумму — проверьте расчёт и отображение комиссии.
4. Проверьте запрет одинаковых пар (например, BTC → BTC).
+ обратите внимание на наличие написанных тестов, можете прогнать и их.

## Замечания по CORS
В dev браузер может блокировать запросы. В `RatesService` есть web‑fallback через публичный CORS‑proxy. В реальном проде лучше использовать свой прокси.

## Замечания по реализации

- `lib/domain/constants/fiat_currencies.dart`: так как с бэкенда не приходит информация о том, какая валюта является фиатной, был добавлен хардкоженный список фиатных валют. 