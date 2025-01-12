import 'package:dartz/dartz.dart';
import 'package:ecom_firebase/data/auth/models/user_creation_req.dart';

abstract class AuthRepository {
  Future<Either> signup(UserCreationReq user);
  Future<Either> getAges();
}
