import 'package:flutter/material.dart';
class popularwidget extends StatefulWidget {
  const popularwidget({super.key});

  @override
  State<popularwidget> createState() => _popularwidgetState();
}

class _popularwidgetState extends State<popularwidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
Container(

  padding: EdgeInsets.only(left: 20,top: 20,right: 10,bottom: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Popular",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),

    Text("See all", style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),)
  ],),
),

SingleChildScrollView(

  scrollDirection: Axis.horizontal,
  
  child: Row(
  
    children: [
      for(int i=1; i<5; i++)
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
        
          width: 150,
          height: 120,
          decoration: BoxDecoration(color: Colors.white,
        
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0,3),
              color: Colors.grey.withOpacity(0.5),
            ),
        
          ]
          
          ),
          child: Image.asset("assets/$i.png"),
        ),
      ),

     
      
      
      
      
      
      
      
    ],
  ),
)
        
      ],
    );
  }
}