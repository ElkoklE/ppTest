import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  bool _loggedIn = false;

  @override
  Future<bool> authenticate(String username, String password) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    _loggedIn = (username == 'demo' && password == 'demo');
    return _loggedIn;
  }

  @override
  Future<void> logout() async {
    _loggedIn = false;
  }
}

