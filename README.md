# ppTest

Architecture: Clean Architecture + BLoC + DI (`get_it`).

## Requirements
- Flutter SDK 3.16.x (Dart 3.2.x)
- Chrome/Chromium to run web


## Install dependencies
```bash
flutter pub get
```

## Run (debug)
```bash
flutter run -d chrome
```
- The project (VS Code) has additional flags configured for Chrome (`--web-browser-flag --disable-web-security`) to bypass CORS in dev.
- If you are not running from VS Code, start Chrome manually with these flags or use your own proxy.

## Production build
```bash
flutter build web
```


## Authorization
- Login: `demo`
- Password: `demo`


## Architecture
- `lib/domain` — repositories and usecases: `GetRatesAgainstUsd`, `ConvertAmount`, `FormatDecimal18`, `FormatFiatFloor2`, `LoginUseCase`.
- `lib/data` — implementations and services: `RatesRepositoryImpl` + `RatesService`, `AuthRepositoryImpl`.
- `lib/presentation` — `RatesBloc`, `AuthBloc`.
- `lib/core/di/injector.dart` — dependency registration (`get_it`).
- `lib/ui` — screens and widgets (Cupertino‑style converter, rates list).

## Testing (manual scenarios)
1. Run the application, login with `demo/demo`.
2. Make sure that on the `Rates` screen the list of rates is visible, refresh and auto-refresh are working.
3. Go to `Convert`, select From/To, enter the amount — check the calculation and fee display.
4. Check the prohibition of identical pairs (e.g., BTC → BTC).
+ pay attention to the written tests, you can run them as well.

## Notes on CORS
In dev, the browser may block requests. In `RatesService` there is a web-fallback through a public CORS-proxy. In a real production environment, it is better to use your own proxy.

## Implementation notes

- `lib/domain/constants/fiat_currencies.dart`: since the backend does not provide information on which currency is fiat, a hardcoded list of fiat currencies has been added.