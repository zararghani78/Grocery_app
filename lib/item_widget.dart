import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/cart_widget.dart';

class itemwidget extends StatefulWidget {
  const itemwidget({super.key});

  @override
  State<itemwidget> createState() => _itemwidgetState();
}

class _itemwidgetState extends State<itemwidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
Container(

  padding: EdgeInsets.only(left: 20,top: 25,right: 10,bottom: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Top",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),

    Text("See all", style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),)
  ],),
),

GridView.count(
  physics: NeverScrollableScrollPhysics(),
  crossAxisCount: 2,
childAspectRatio: 0.8,
shrinkWrap: true,
children: [
  for(int i=1;i<8; i++)
  Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
    padding:EdgeInsets.symmetric(horizontal: 15,),
    
      height: 160,
    
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0,3),
            color: Colors.grey.withOpacity(0.5),
          )
        ],

        
      ),

      child: Column(children: [

        InkWell(

          onTap: (){

Navigator.pushNamed(context, "addcartpage");

          },

          child: 
            
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/$i.png",
                height: 90,
                width: 150,),
              ),

              
           
          
        ),
        Padding(
          
          padding:  EdgeInsets.only(bottom: 3),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text("Fruite",style: TextStyle(color: Colors.green,fontSize: 18, fontWeight: FontWeight.bold),),
          ),
        ),
         Padding(
          
          padding:  EdgeInsets.only(bottom:3),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text("Fresh Fruite",
            style: TextStyle(color: Colors.black,fontSize: 14),),
          ),
        ),
 Padding(
          
          padding:  EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text("\$10",style: TextStyle(color: Colors.green,fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              InkWell(
                onTap: (){},

                child: Container(padding: EdgeInsets.all(5),
                
                decoration: BoxDecoration(color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                
                ),


                child: Icon(CupertinoIcons.cart,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
       
        
      ]),
    ),
  )
],

)
      ],);
  }
}