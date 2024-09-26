import 'package:untitled/models/product.dart';

abstract class ProductState{}

class ProductInitial extends ProductState{}

class GetAllProducts extends ProductState{
  final List<Product> productsList;
  GetAllProducts(this.productsList);
}