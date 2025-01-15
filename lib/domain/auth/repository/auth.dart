import 'package:dartz/dartz.dart';
import 'package:ecom_firebase/data/auth/models/user_creation_req.dart';
import 'package:ecom_firebase/data/auth/models/user_signin_req.dart';

abstract class AuthRepository {
  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSigninReq user);
  Future<Either> getAges();
  Future<Either> sendPasswordResetEmail(String email);
  Future<bool> isLoggedIn();
  Future<Either> getUser();
}
