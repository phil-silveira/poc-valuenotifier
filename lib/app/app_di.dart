import 'package:get_it/get_it.dart';
import 'package:poc_valuenotifier/repositories/auth_repository.dart';

void registerDepencies() {
  GetIt.I.registerSingleton<IAuthRepository>(
    AuthRepository(),
  );
}
