import 'package:ecom_firebase/data/auth/repository/auth_repository_impl.dart';
import 'package:ecom_firebase/data/auth/source/auth_firebase_service.dart';
import 'package:ecom_firebase/domain/auth/repository/auth.dart';
import 'package:ecom_firebase/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

import 'domain/auth/usecases/get_ages.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // Repositories

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // Usecases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<GetAgesUseCase>(
      GetAgesUseCase()
  );
}
