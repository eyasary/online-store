import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FreshFruits extends StatelessWidget {
  final String name,img;
  const FreshFruits({Key? key, required this.name, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
         Image.asset(
          img,
          fit: BoxFit.cover,
          height:MediaQuery.of(context).size.height/8),
          
          SizedBox(height:2,),
          Text(name,style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300)),

      ],),
    );
  }
}