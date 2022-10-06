abstract class IAuthRepository {
  Future<bool> logIn(String email, String password);
}

class AuthRepository implements IAuthRepository {
  @override
  Future<bool> logIn(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    return true;
  }
}
