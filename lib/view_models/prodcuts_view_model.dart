import 'package:untitled/models/product.dart';
import 'package:untitled/repositories/product/product_repository.dart';

class ProductsViewModel{
  ProductRepository productRepository;
  ProductsViewModel({required this.productRepository});

  Future<List<Product>> getAllProducts()async{
    List<Product> productList = await productRepository.getAllProducts();
    return productList;
  }

}
