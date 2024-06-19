import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('PVS App'),
        ),
        backgroundColor: Colors.lightBlue[700],
      ),
      body: Center(
        child: Image.network('https://img.offers-cdn.net/assets/uploads/offers/za/13373512/baby-clothes-large.jpeg')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.orange[700],
        child: Icon(
            Icons.add,
            color: Colors.brown[700],
        ),
      ),
    ),
  ));
}
