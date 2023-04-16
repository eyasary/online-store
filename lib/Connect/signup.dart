import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController pswdcontroller = TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Text("Sign Up for a new account",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          FieldText(
            val1: namecontroller,
            hint: 'Name',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          FieldText(
            val1: emailcontroller,
            hint: 'Email',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          FieldText(
            val1: phonecontroller,
            hint: 'Phone',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          FieldText(
            val1: pswdcontroller,
            hint: 'Password',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          GestureDetector(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () async {
                try {
                  final user =
                      await _auth.createUserWithEmailAndPassword(
                          email: emailcontroller.text.trim(),
                          password: pswdcontroller.text.trim());
                  if (user != null) {
                    Navigator.pushNamed(context, 'firstpage');
                  }
                } catch (e) {
                  print(e);
                }
              }),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            children: [
              Text(
                'Have an account ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'signin');
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
