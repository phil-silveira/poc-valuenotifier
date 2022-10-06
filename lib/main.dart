import 'package:flutter/widgets.dart';
import 'package:poc_valuenotifier/app/app_configs.dart';
import 'package:poc_valuenotifier/app/app_di.dart';
import 'package:poc_valuenotifier/app/environments.dart';

import 'app/poc_app.dart';

void main() {
  AppConfigs.instance.environment = Environments.fromString(
    const String.fromEnvironment('ENV_NAME', defaultValue: 'DEV'),
  );

  registerDepencies();

  runApp(const PocApp());
}
