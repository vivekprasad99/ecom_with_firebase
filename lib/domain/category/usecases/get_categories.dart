import 'package:dartz/dartz.dart';
import 'package:ecom_firebase/core/usecase/usecase.dart';
import 'package:ecom_firebase/domain/category/repository/category.dart';
import 'package:ecom_firebase/service_locator.dart';

class GetCategoriesUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return await sl<CategoryRepository>().getCategories();
  }

}