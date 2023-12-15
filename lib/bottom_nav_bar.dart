import 'package:flutter/material.dart';
import 'package:groceryapp/cart_item.dart';

class bottomnavibar extends StatefulWidget {
  const bottomnavibar({super.key});

  @override
  State<bottomnavibar> createState() => _bottomnavibarState();
}

class _bottomnavibarState extends State<bottomnavibar> {
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      
      color: Colors.white),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$120",
            style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
        
            Container(

               decoration: BoxDecoration(

                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: (){

                Navigator.pushNamed(context, "Cartitem");
                },
                      
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                
               
                 
                  
                  child: Row(
                    children: [
                  
                      Icon(Icons.add_shopping_cart,color: Colors.white),
                  
                  
                      Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  
                      
                ),
              ),
            )
        
        
          ],
        ),
        
      ),


    );
  }
}