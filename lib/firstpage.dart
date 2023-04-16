import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:site/Connect/signin.dart';
import 'package:site/freshfruits.dart';
import 'package:site/fruitcard.dart';
import 'package:site/list.dart';

import 'Interface.dart';
import 'drawerbody.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () { 
                _auth.signOut();
                Navigator.pop(context); 
                },
              child: Icon(Icons.logout,color:Colors.black )),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
       body: SingleChildScrollView(
         child:
           Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/42,),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                 
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child:  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Search here...",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                      suffixIcon: Icon(Icons.search,color: Colors.green,)
                    ),
                  )
                  ),
                ),
              SizedBox(height: MediaQuery.of(context).size.height/40),
              Text("Fresh Fruits",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Interface(liste: l1),
              SizedBox(height: MediaQuery.of(context).size.height/40),
              Text("Fresh Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Interface(liste: l2),
              
           ],),
         ),
       ),
       drawer: Drawer(
         child: ListView(
          children: [
              Column(
                  children: [
                    Center(child: Text("Organic",style: TextStyle(color: Colors.green,fontSize: 50,fontWeight: FontWeight.bold),),),
                    SizedBox(height: MediaQuery.of(context).size.height/20,),
                    DrawerBody(),
                  ],
                ) ,
             ] ),
            ),
    );
  }
}