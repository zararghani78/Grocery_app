
import'package:flutter/material.dart';
import 'package:groceryapp/cart_item.dart';
import 'package:groceryapp/cart_page.dart';
import 'package:groceryapp/cart_widget.dart';
import 'package:groceryapp/indexpage.dart';
import 'package:groceryapp/splashscreen.dart';
void main(){

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,


routes: {
  "/":(context)=> splashscreen(),
  "indexpage":(context)=> indexpage(),
  "Cartpage":(context)=> Cartpage(),
  "addcartpage": (context)=>addcartpage(),
   "Cartitem": (context)=>Cartitem(),
},

      
    );
  }
}