import 'package:untitled/repositories/product/product_repository.dart';
import 'package:untitled/views/product/logic/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState>{
  ProductCubit(this.productRepository) : super(ProductInitial());
  final ProductRepository productRepository;


  void emitGetAllProducts(){
    productRepository.getAllProducts().then((productList){
      emit(GetAllProducts(productList));
    });

  }

}