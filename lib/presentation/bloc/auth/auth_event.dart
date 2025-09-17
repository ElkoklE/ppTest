part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginRequested(String username, String password) = AuthLoginRequested;
  const factory AuthEvent.logoutRequested() = AuthLogoutRequested;
}