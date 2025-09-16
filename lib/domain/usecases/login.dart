import '../repositories/auth_repository.dart';

class LoginUseCase {
  LoginUseCase(this._repo);
  final AuthRepository _repo;
  Future<bool> call(String username, String password) => _repo.authenticate(username, password);
}

