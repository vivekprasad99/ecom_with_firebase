import 'package:ecom_firebase/common/bloc/product/product_display_state.dart';
import 'package:ecom_firebase/core/usecase/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsDisplayCubit extends Cubit<ProductsDisplayState> {
  final UseCase useCase;
  ProductsDisplayCubit({required this.useCase}) : super(ProductsInitialState());

  void displayProducts({dynamic params}) async {
    emit(
        ProductsLoading()
    );
    var returnedData = await useCase.call(
        params: params
    );
    returnedData.fold(
            (error) {
          emit(
              LoadProductsFailure()
          );
        },
            (data) {
          emit(
              ProductsLoaded(products: data)
          );
        }
    );
  }

  void displayInitial() {
    emit(
        ProductsInitialState()
    );
  }

}