part of 'product_cubit.dart';

 class ProductState {}


class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
 final List<ProductGroupModel> data;

  ProductSuccess(this.data);

}

class ProductFailure extends ProductState {
 final String error;

  ProductFailure(this.error);

}

