import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../textfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth=FirebaseAuth.instance;
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController pswdcontroller=TextEditingController();
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
           FieldText(val1: emailcontroller, hint: 'Email',),
          SizedBox(height: MediaQuery.of(context).size.height/50,),
           
           FieldText(val1: pswdcontroller, hint: 'Password',),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
          Container(
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
                onTap: ()async{
                  try{
                    final user=await _auth.signInWithEmailAndPassword(email: emailcontroller.text.trim(), password:pswdcontroller.text.trim());
                    if(user!=null)
                    {
                      Navigator.pushNamed(context,'firstpage');
                    }
                  }
                  catch(e){
                     print(e);
                  }
                }
              ),
               SizedBox(height: MediaQuery.of(context).size.height/50,),
               GestureDetector(onTap: () {},child: Text("Forget Password?",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 80, 75, 75)),)),
               InkWell(
                  onTap: (){
                    Navigator.pushNamed(context,'signup');
                  },
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
    )
        ],
      ),
    );
  }
}