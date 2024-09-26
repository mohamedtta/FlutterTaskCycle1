import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/repositories/product/product_api.dart';
import 'package:untitled/views/product/logic/product_cubit.dart';
import 'package:untitled/views/product/product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context)=> ProductCubit(ProductAPI()),child: const ProductScreen(),)
    );
  }
}

