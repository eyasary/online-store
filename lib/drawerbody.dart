import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:site/ProductDesc/checkout.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(width: 30,),
                  Text("Home",style:TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: GestureDetector(
                onTap: () {
                 
                },
                child: Row(
                  children: [
                    Icon(Icons.menu,),
                    SizedBox(width: 30),
                    Text("Categories",style:TextStyle(color: Colors.black,fontSize: 20),),
                  ],
                ),
              ),
            ),
                        Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: GestureDetector(
                onTap: () {
                 
                },
                child: Row(
                  children: [
                    Icon(Icons.favorite,),
                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckOut(),) ),
                      child: Text("Orders",style:TextStyle(color: Colors.black,fontSize: 20),)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 30,),
                  Text("Profile",style:TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),
            ),
        ],
      ),
    );
  }
}