import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/views/product/logic/product_cubit.dart';
import 'package:untitled/views/product/logic/product_state.dart';
import 'package:untitled/views/product/widgets/product_card.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var productList = [];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductCubit>(context).emitGetAllProducts();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BlocBuilder<ProductCubit,ProductState>(builder: (context,state){
        if(state is GetAllProducts){
          productList = state.productsList;
          return ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context,index){
                index ++;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductCard(product: productList[index-1],),
                      ProductCard(product: productList[index+1],),
                    ],
                  );
              });
        }else{
          return const Center(child: CircularProgressIndicator(backgroundColor: Colors.blue,strokeWidth: 4,));
        }
      })
    );
  }
}
