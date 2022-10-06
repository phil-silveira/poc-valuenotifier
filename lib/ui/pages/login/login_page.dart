import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc_valuenotifier/controllers/login_controller.dart';
import 'package:poc_valuenotifier/ui/pages/home/home_page.dart';
import 'package:poc_valuenotifier/ui/themes/app_button_theme.dart';

import 'nickname_formatter.dart';

class LoginPage extends StatefulWidget {
  static const route = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements ILoginView {
  final nicknameKey = GlobalKey<FormFieldState>();

  late final LoginController controller;

  @override
  void initState() {
    controller = LoginController(this, GetIt.I.get());
    super.initState();
  }

  @override
  void navigateToHome() {
    Navigator.of(context).pushNamed(HomePage.route);
  }

  @override
  Widget build(BuildContext context) {
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
                  // Exemplo de botão com estilo herdado do tema da applicação
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
                // Exemplo de botão com estilo usando o "style"
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
