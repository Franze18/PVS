import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Scaffold(
    backgroundColor: Colors.lightBlue,
    appBar: AppBar(
      title: Text('User Profile',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.blue,
    centerTitle: true,
  ),
  body: Padding(
    padding: EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'NAME:',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black87,
            letterSpacing: 2.0,
          ),
        ),
        Text(
          'Franze Ross Arroyo',
          style: TextStyle(
            fontSize:25.0 ,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 30.0),
        Text(
          'YEAR:',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black87,
            letterSpacing: 2.0,
          ),
        ),
        Text(
          'Third Year',
          style: TextStyle(
            fontSize:25.0 ,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 30.0),
        Text(
          'Email:',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black87,
            letterSpacing: 2.0,
          ),
        ),
        Text(
          'arroyofranzeross@gmail.com',
          style: TextStyle(
            fontSize:25.0 ,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    ),
  ),
),
));


