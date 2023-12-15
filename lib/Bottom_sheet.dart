import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCartsheet extends StatefulWidget {
  const BottomCartsheet({super.key});

  @override
  State<BottomCartsheet> createState() => _BottomCartsheet();
}

class _BottomCartsheet extends State<BottomCartsheet> {
  @override
  Widget build(BuildContext context) {
    return   Material(

      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 600,
        child: Column(
        
          children: [
          
            Container(
              height: 500,
              
              child: SingleChildScrollView(
                
                child: Column(
                      
                  children: [
                        for(int i=1;i<5; i++)
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
                            Image.asset("assets/$i.png",
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                          Icon(Icons.disabled_by_default,color: Colors.green,size: 27,),
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
                                  child: Icon(CupertinoIcons.plus,color: Colors.black,),
                                ),
                              
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text("02",style: TextStyle(color: Colors.green, fontSize: 17,fontWeight: FontWeight.bold),),
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
                                  child: Icon(CupertinoIcons.minus,color: Colors.black,),
                                )
                              ],
                            ),
                              
                             
                    
                      ]),   
                            ),
                          
                         
                          ],
                            
                          
                        ),
                      ),
                    ),
SizedBox(height: 10,),
                    Container(
                      height: 10,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),

                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ]
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(20),
                    child: Container(
padding: EdgeInsets.all(20),
                     height: 110,
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      spreadRadius: 2,
      blurRadius: 10,
      offset: Offset(0,3),
      color: Colors.grey.withOpacity(0.5),
    )
  ]
),
                     child: Column(
                    
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery Fees",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("\$10",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                          
                          ],
                        ),
                        SizedBox(height: 16,),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sub ",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("\$10",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                          
                          ],
                        )
                      ],
                     ), 
                    ),
                    ),
              
                  
                  ],
                 
                ),
              ),
            ),

                   InkWell(

                    onTap: (){},
                    child: Container(

                      height: 90,
                      decoration: BoxDecoration(
                    color: Colors.white,

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                          Text("\$20",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),)
                      ,InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(8),
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        
                        child: Text("Check Out",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          
                        ),
                      ) ],),
                      ),
                    )
                      
                    ),
          ],
        ),
      ),
    );
  }
}