import 'package:poc_valuenotifier/app/environments.dart';

// Singleton com as configs do app
class AppConfigs {
  static final AppConfigs _instance = AppConfigs._();
  static AppConfigs get instance => _instance;

  AppConfigs._();

  // Mais configs globais do app, aqui ...
  Environments environment = Environments.dev;
}
