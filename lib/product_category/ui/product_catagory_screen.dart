import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Product Category Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),),
    );
  }
}
