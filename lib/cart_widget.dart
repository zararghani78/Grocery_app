import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/bottom_nav_bar.dart';

class addcartpage extends StatefulWidget {
  const addcartpage({super.key});

  @override
  State<addcartpage> createState() => _addcartpageState();
}

class _addcartpageState extends State<addcartpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: SafeArea(
  child: SingleChildScrollView(
    
    child: Column(
      children: [
        Container(
          
          margin: const EdgeInsets.all(15),
          height: 210,
          width: double.infinity,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/3.png"))
          ),
        child:InkWell(

onTap: (){
  Navigator.pop(context);
},

child: Icon(Icons.arrow_back,color: Colors.green,size: 30,),

 )
         
        ) ,
        Container(
          height: MediaQuery.of(context).size.height* 0.5,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(15),

          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),

          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            
            Padding(padding: EdgeInsets.only(top: 13,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Fruit Title",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
             ,Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
            
                  child: Icon(CupertinoIcons.minus,color: Colors.green,)),
                  SizedBox(width: 5,),
 Container(
  
                
            
                  child: Text("01",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(width: 5,),
                   Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
            
                  child: Icon(CupertinoIcons.plus,color: Colors.green,))
              ],
             ) 



            ]),
            ),
SizedBox(height: 10,),

          Row(
            

            children: [
            
              Icon(Icons.star,color: Colors.yellow, size: 18,),

              Text("4.5   (250)", style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)
            ],
          ),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           

Text("Description",style: TextStyle(color: Colors.white,fontSize: 27, fontWeight: FontWeight.bold),),
SizedBox(height: 5,),

Text("What is a fruit? In a botanical sense, a fruit is the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.",style: TextStyle(color: Colors.white,fontSize: 14,),)
,SizedBox(height: 15,)
,Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

    Text("Delivery Time",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
Row(
  children: [

    Icon(CupertinoIcons.clock, color: Colors.white,size: 25,),
    Text(" :30 Minuts",style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),),
  ],
)
    
  ],
)
        ],),
        )
          ],),

        ),

  

    
        ]),
      
    ),
    
  ),

  bottomNavigationBar: bottomnavibar(),
);

    
  }
}