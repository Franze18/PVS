import 'package:flutter/material.dart';
import 'package:untitled/services/product.dart';
import 'package:untitled/services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products = <Product>[
    Product(productName: "Puge T-shirt", price: 1000.99),
    Product(productName: "Puge T-shirt Classic Style", price: 1499.99),
    Product(productName: "Puge T-shirt Retro Style", price: 1999.99),
    Product(productName: "Puge T-shirt Girl Style", price: 1399.99),
    Product(productName: "Puge T-shirt Eme Style", price: 1299.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Menu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          children: products.map((product) => Menucard(product: product)).toList(),
        ),
      ),
    );
  }
}
