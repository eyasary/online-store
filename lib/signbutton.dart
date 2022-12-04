import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:site/firstpage.dart';

class SignButton extends StatelessWidget {
  const SignButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              GestureDetector(
                child: Container(
                  width: 50,
                  height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.green,
                ),
                child:Icon(Icons.arrow_right_alt_outlined,color: Colors.white,) ,),
                onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage(),))
              ),
               SizedBox(height: MediaQuery.of(context).size.height/50,),
              GestureDetector(onTap: () {},child: Text("Forget Password?",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 80, 75, 75)),)),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
             ],
        ),
      ),
    );
  }
}