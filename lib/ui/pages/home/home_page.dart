import 'package:flutter/material.dart';
import 'package:poc_valuenotifier/app/app_configs.dart';

class HomePage extends StatelessWidget {
  static const route = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página principal'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Seja bem vindo ao nosso app :) <<${AppConfigs.instance.environment.name}>>'),
            Text('Nosso site: ${AppConfigs.instance.environment.baseUrl}'),
          ],
        ),
      ),
    );
  }
}
