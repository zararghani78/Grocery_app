import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartitem extends StatefulWidget {
  const Cartitem({super.key});

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

body: SafeArea(
  child: Padding(
    padding: const EdgeInsets.only(top:10),
    child: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    
        InkWell(
    
    onTap: (){
    Navigator.pop(context);
    },
    
    child: Icon(Icons.arrow_back,color: Colors.green,size: 30,),
    
     ),
          Column(
               // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                //  for(int i=1;i<8; i++)
              Padding(
                padding: const EdgeInsets.only(top:16,left: 20,right: 20,),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 10,
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.5))
                    ]
                  )
                      ,
                  child: Row(
                    children: [
                      Image.asset("assets/1.png",
                      height: 100,
                      width: 80,),
              
                      Container(
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Strawberry",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Strawberry is the best fruit ",style: TextStyle(color: Colors.green,fontSize: 12),),
                         SizedBox(height: 14,),
                         Text("\$20 ",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Spacer(),
              
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   // Icon(Icons.disabled_by_default,color: Colors.green,size: 27,),
                    SizedBox(height: 15,),
                   Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
              
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                            
                              ]
                            ) ,
                           // child: Icon(CupertinoIcons.plus,color: Colors.black,),
                          ),
                        
              Padding(
                padding: const EdgeInsets.all(4),
               // child: Text("02",style: TextStyle(color: Colors.green, fontSize: 17,fontWeight: FontWeight.bold),),
              ),
                           Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
              
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                            
                              ]
                            ) ,
                          //  child: Icon(CupertinoIcons.minus,color: Colors.black,),
                          )
                        ],
                      ),
                        
                       
              
                ]),   
                      ),
                    
                   
                    ],
                      
                    
                  ),
                ),
              ),
            ],
          )  
        
      ],
    ),
    ),
  ),
),      
    );
  }
}