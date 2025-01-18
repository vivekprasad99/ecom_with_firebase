import 'package:ecom_firebase/domain/category/usecases/get_categories.dart';
import 'package:ecom_firebase/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'categories_display_state.dart';

class CategoriesDisplayCubit extends Cubit<CategoriesDisplayState> {

  CategoriesDisplayCubit() : super (CategoriesLoading());

  void displayCategories() async {
    var returnedData = await sl<GetCategoriesUseCase>().call();
    returnedData.fold(
            (error){
          emit(
              LoadCategoriesFailure()
          );
        },
            (data) {
          emit(
              CategoriesLoaded(categories: data)
          );
        }
    );
  }

}