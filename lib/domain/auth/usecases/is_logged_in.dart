import 'package:ecom_firebase/core/usecase/usecase.dart';
import 'package:ecom_firebase/domain/auth/repository/auth.dart';
import 'package:ecom_firebase/service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool,dynamic> {

  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }

}