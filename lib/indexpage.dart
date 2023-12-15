import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:groceryapp/Bottom_sheet.dart';
import 'package:groceryapp/categoerypage.dart';
import 'package:groceryapp/item_widget.dart';
import 'package:groceryapp/popular_widget.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';
class indexpage extends StatefulWidget {
  const indexpage({super.key});

  @override
  State<indexpage> createState() => _indexpageState();
}

class _indexpageState extends State<indexpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 20, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 26,
                    ),
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                color: Colors.white.withOpacity(0.2),
                              )
                            ]),
                        child: badges.Badge(
                            badgeStyle: badges.BadgeStyle(
                                badgeColor: Color.fromARGB(255, 58, 59, 58)),
                            badgeContent: Text(
                              "3",
                              style: TextStyle(color: Colors.white),
                            ),
                            child: InkWell(
                              onTap: () {
                                showSlidingBottomSheet(
                                  context, 
                                builder:(context){

                                  return SlidingSheetDialog(

                                    elevation: 8,
                                    cornerRadius: 20,
                                    builder: (context, State){
                                      return BottomCartsheet();
                              
                                    }

                                  );
                                });
                              },
                              child: Icon(CupertinoIcons.cart,
                                  color: Colors.white),
                            ))),
                  ]),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "What do like to Buy?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.all(15),
                // width: 280,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.all(8),
                        width: 237,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search here",
                            border: InputBorder.none,
                          ),
                        )),
                    Spacer(),
                    Icon(Icons.filter_list),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [categoerypage(), popularwidget(), itemwidget()],
                )),
          ],
        ),
      )),
    );
  }
}
