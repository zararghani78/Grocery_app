import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


Image.asset("splash.png",

height: 300,
),

SizedBox(height: 25),
Container(
  margin: EdgeInsets.only(top: 50),
child: Text(
  "Buy Fresh Groceries",

  style: TextStyle(color: Colors.green,
  
  fontSize: 24,
  fontWeight: FontWeight.bold),
)

),
SizedBox(height: 17,),
InkWell(
  onTap: (){

    Navigator.pushReplacementNamed(context, "indexpage");
  },

  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.green,
    ),

    child: Text("Get Start",style: TextStyle(color: Colors.white),),
  ),
)




      ],
      ),
      
      
      ),


    );
  }
}