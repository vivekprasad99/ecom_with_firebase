import 'package:dartz/dartz.dart';
import 'package:ecom_firebase/data/product/models/product.dart';
import 'package:ecom_firebase/data/product/source/product_firebase_service.dart';
import 'package:ecom_firebase/domain/product/repository/product.dart';
import 'package:ecom_firebase/service_locator.dart';

class ProductRepositoryImpl extends ProductRepository {


  @override
  Future<Either> getTopSelling() async {
    var returnedData = await sl<ProductFirebaseService>().getTopSelling();
    return returnedData.fold(
            (error){
          return Left(error);
        },
            (data){
          return Right(
              List.from(data).map((e) => ProductModel.fromMap(e).toEntity()).toList()
          );
        }
    );
  }

  @override
  Future<Either> getNewIn() async {
    var returnedData = await sl<ProductFirebaseService>().getNewIn();
    return returnedData.fold(
            (error){
          return Left(error);
        },
            (data){
          return Right(
              List.from(data).map((e) => ProductModel.fromMap(e).toEntity()).toList()
          );
        }
    );
  }

}