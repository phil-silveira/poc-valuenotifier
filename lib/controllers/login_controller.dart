import 'package:flutter/material.dart';
import 'package:poc_valuenotifier/repositories/auth_repository.dart';

abstract class ILoginView {
  void navigateToHome();
}

class LoginController {
  final IAuthRepository _repository;
  final ILoginView _view;

  LoginController(this._view, this._repository);

  final ValueNotifier<bool> loading = ValueNotifier(false);
  final ValueNotifier<String> nickname = ValueNotifier('');

  VoidCallback? navigatToHome;

  String? nicknameValidator(String? value) {
    if (value == null || value.isEmpty) return 'Campo vazio';

    if (value.length < 6) return 'Mínimo 6 digitos';

    return null;
  }

  void saveNickname(String? value) {
    nickname.value = value ?? '';
  }

  Future<void> logIn() async {
    loading.value = true;
    await _repository.logIn('monstro-do-whey@maromba.com', 'vitaminas123');
    _view.navigateToHome();
    loading.value = false;
  }
}
