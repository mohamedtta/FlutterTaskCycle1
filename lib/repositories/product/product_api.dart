import 'package:untitled/models/product.dart';
import 'package:untitled/repositories/product/product_repository.dart';
import 'package:dio/dio.dart';

class ProductAPI extends ProductRepository{
  @override
  Future<List<Product>> getAllProducts() async{
    List<Product> productList = [];
    try{
      var response = await Dio().get("https://fakestoreapi.com/products");
      var list = response.data as List;
      productList = list.map((oneProduct) => Product.fromJson(oneProduct)).toList();
    }catch(e){
      print(e);
    }
    return productList;
  }

}