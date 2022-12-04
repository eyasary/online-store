import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:site/DescrPage.dart';

class Fruitcard extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final String descp;
  const Fruitcard({Key? key, required this.image, required this.name, required this.descp, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Stack(
          children:[
             Container(
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
                        Text("$price DT",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                   ],
                 ),
               ),
             ),
             Positioned(
              bottom: 5,
              right: 20,
              child:Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(3,3),
                                blurRadius: 3,
                           
                              )
                            ]
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(
                      vertical:5,
                      horizontal:5,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.favorite),
                        Text("Save",style: TextStyle(fontSize: 17),),
                      ],
                    ),
                  ),
                ),
              
              ),
          
          ],
        ),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>DescrPage(img: image, name: name, price:price),)),
      ),
    );
  }
}

