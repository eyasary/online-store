import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:site/firstpage.dart';
import 'package:site/textfield.dart';
import 'package:site/Connect/signin.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Image(
                height:MediaQuery.of(context).size.height/2.5,
                image:AssetImage('images/realfruits.png'),
                fit: BoxFit.cover,),
                Center(child: Text("Organic",style: TextStyle(color: Colors.green,fontSize: 50,fontWeight: FontWeight.bold),),),
                SignIn(),
              
                
             ],
           ),
         ),
    );
  }
}