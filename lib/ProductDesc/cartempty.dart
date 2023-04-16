import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:site/Communs/appbutton.dart';
import 'package:site/firstpage.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset('images/empty-cart.png'),
            Text('Your Cart Is Empty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Text("Looks like you didn't add anything to your cart yet !",),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            
          ],
        ),
      ),
    );
  }
}