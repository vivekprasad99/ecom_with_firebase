import 'package:dartz/dartz.dart';
import 'package:ecom_firebase/core/usecase/usecase.dart';
import 'package:ecom_firebase/data/auth/models/user_signin_req.dart';
import 'package:ecom_firebase/domain/auth/repository/auth.dart';
import 'package:ecom_firebase/service_locator.dart';

class SigninUseCase implements UseCase<Either,UserSigninReq> {

  @override
  Future<Either> call({UserSigninReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }

}