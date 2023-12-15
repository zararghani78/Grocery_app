import 'package:flutter/material.dart';
class categoerypage extends StatefulWidget {
  const categoerypage({super.key});

  @override
  State<categoerypage> createState() => _categoerypageState();
}

class _categoerypageState extends State<categoerypage> {
  @override
  Widget build(BuildContext context) {
    return  Column(

children: [

  Padding(
    
    padding: EdgeInsets.only(left: 20,right: 20),
    
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

  Text("Category",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),

  Text("Sea all", style: TextStyle(color: Colors.green),)
]),

  ),

 SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    
    
    children: [
      for(int i =1; i<6;i++)
Container(
  width: 150,
  
  margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),

  height: 50,
  decoration: BoxDecoration(color: Colors.white,
  
  borderRadius: BorderRadius.circular(15)
  , boxShadow: [
    BoxShadow(
      spreadRadius: 2,
      blurRadius: 6,
      offset: Offset(0,3),
      color: Colors.grey.withOpacity(0.5),
    )
  ]),
  child: Row(children: [

    Image.asset("assets/$i.png"),
    Text("Strawberry",style: TextStyle(color: Colors.green,fontSize: 16),),
  ]),
)
  ]),
 )


],
    );
  }
}