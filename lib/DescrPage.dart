import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:site/addtocard.dart';

class DescrPage extends StatelessWidget {
  final String img,name;
  final double price;
  const DescrPage({Key? key, required this.img, required this.name, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Product",style: TextStyle(color: Colors.black),),
            centerTitle: true,
            leading: IconButton(icon:Icon(Icons.arrow_back),color: Colors.black,
            onPressed: () => Navigator.pop(context),),
            actions: [
              Icon(Icons.add,color: Colors.black,),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height/2.2,
                 decoration: BoxDecoration(
             borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30)),
                 image:DecorationImage(
                 image: AssetImage(img),
                 fit: BoxFit.cover)
             ),
               ),
             Align(
              alignment: Alignment.bottomCenter,
               child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                padding: EdgeInsets.only(
                   top:MediaQuery.of(context).size.height*0.12,
                   left:MediaQuery.of(context).size.width /10,
                   right: MediaQuery.of(context).size.height/10,
                 ),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 188, 186, 186)),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                ),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
               Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
               SizedBox(height: MediaQuery.of(context).size.height/40,),
               Text("${price} Dinars",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
               SizedBox(height: MediaQuery.of(context).size.height/40,),
                AddToCard()
                 ],
                ),
               ),
             ),
 
          
          
             
              ],
            ),
          ),
    );
  }
}
