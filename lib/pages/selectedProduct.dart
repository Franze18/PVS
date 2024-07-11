import 'package:flutter/material.dart';
import 'package:untitled/services/product.dart';

class selectedProduct extends StatefulWidget {
  final Product product;
  const selectedProduct({super.key, required this.product});

  @override
  State<selectedProduct> createState() => _selectedProductState(product: product);
}

class _selectedProductState extends State<selectedProduct> {
  final Product product;
  late double totalAmount;
  int numberOfOrders = 1;
  _selectedProductState({required this.product});

  @override
  void initState() {
    super.initState();
    totalAmount = product.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 20.0),
              Text(widget.product.productName,
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)
              ),
              Text(widget.product.description),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Php. ${totalAmount.toString()}',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          if(numberOfOrders > 1){
                            numberOfOrders -= 1;
                            totalAmount = product.price * numberOfOrders;
                          }
                        });
                      },
                      icon:Icon(Icons.remove)
                  ),
                  Text(
                    numberOfOrders.toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      numberOfOrders += 1;
                      totalAmount = product.price * numberOfOrders;
                    });
                  },
                      icon: Icon(Icons.add)
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
