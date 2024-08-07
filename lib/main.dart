import 'package:flutter/material.dart';
import 'package:untitled/home.dart';
import 'package:untitled/pages/dashboard.dart';
import 'package:untitled/pages/menu.dart';
import 'package:untitled/pages/selectedProduct.dart';
import 'package:untitled/pages/signup.dart';
import 'package:untitled/pages/login.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/login',
  routes: {
    '/' : (context) => Dashboard(),
    '/login' : (context) => Login(),
    '/profile' : (context) => Home(),
    '/signup' : (context) => Signup(),
  },
));



