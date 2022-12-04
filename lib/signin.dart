import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/50,),
          Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: MediaQuery.of(context).size.height/50,),
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/50,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}