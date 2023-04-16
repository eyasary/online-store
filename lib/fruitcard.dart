import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:site/DescrPage.dart';
import 'package:site/ProductDesc/cartnotempty.dart';

class Fruitcard extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final String descp;
  const Fruitcard({Key? key, required this.image, required this.name, required this.descp, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return CartNotEmpty();
    },
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width/2,
          height: MediaQuery.of(context).size.height/2.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
                boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(5.0,5.0),
                          blurRadius: 10,
                     
                        )
                      ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Image.asset(image,
                   fit: BoxFit.cover,
                   width:(MediaQuery.of(context).size.width),
                   height: (MediaQuery.of(context).size.height/2.75)/2,
                   ),
                   SizedBox(height: 12,),
                   Text(name,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                   Text(
                    descp,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("$price DT",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                       addWidget(),
                     ],
                   ),
              ],
            ),
          ),
        ),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>DescPage(img: image, name: name, desc: '', price: price),)),
      ),
    ),);
  }
  Widget addWidget(){
     return Container(
      height: 45,width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.green,
      ),
      child: Center(
        child: Icon(Icons.add,color: Colors.white,size: 25,),
      ),
      
     );
  }
}


