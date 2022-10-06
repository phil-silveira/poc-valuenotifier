import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc_valuenotifier/controllers/login_controller.dart';
import 'package:poc_valuenotifier/ui/themes/app_button_theme.dart';

import 'nickname_formatter.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  final nicknameKey = GlobalKey<FormFieldState>();
  late final LoginController controller;

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller = GetIt.I.get();
    controller.navigatToHome = () {
      Navigator.of(context).pushNamed('/home');
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Log in')),
      body: ValueListenableBuilder(
        valueListenable: controller.loading,
        builder: (context, loading, _) {
          if (loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  key: nicknameKey,
                  decoration: const InputDecoration(
                    labelText: 'Nickname',
                  ),
                  inputFormatters: [
                    NicknameFormatter(),
                  ],
                  validator: controller.nicknameValidator,
                  onSaved: controller.saveNickname,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  child: TextButton(
                    onPressed: () {
                      if (!(nicknameKey.currentState?.validate() ?? false)) {
                        return;
                      }
                      nicknameKey.currentState?.save();

                      controller.logIn();
                    },
                    child: const Text('Entrar'),
                  ),
                ),
                TextButton(
                  style: ButtonType.secondary.toStyle(context),
                  onPressed: () {},
                  child: const Text('Bah'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
