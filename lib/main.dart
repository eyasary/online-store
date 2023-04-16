import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site/Connect/signin.dart';
import 'package:site/ProductDesc/cartnotempty.dart';
import 'package:site/firstpage.dart';

import 'Connect/signup.dart';
import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return CartNotEmpty();
    },
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/',
      routes: {
        '/':(context) => Home(),
        'signin':(context) => SignIn(),
        'signup':(context) => SignUp(),
        'firstpage':(context) => FirstPage()
        
      },
    ),);
  }
}
