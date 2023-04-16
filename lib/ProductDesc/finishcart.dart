import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:site/Communs/colors.dart';
import 'package:site/ProductDesc/cartnotempty.dart';
import 'package:site/list.dart';

class FinishCart extends StatefulWidget {
  const FinishCart({super.key});

  @override
  State<FinishCart> createState() => _FinishCartState();
}

class _FinishCartState extends State<FinishCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('My Cart'),
      ),
      body: 
               Column(
                 children: [
                   Expanded(
                     child: ListView.builder(
                      itemCount: listcart.length,
                      itemBuilder: (context, index) =>  Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ListTile(
                            title: Text("${listcart[index].name}   ${listcart[index].price} DT",style: TextStyle(fontWeight:FontWeight.bold),),
                            leading: Image.asset(listcart[index].img),
                            trailing:IconButton(onPressed: () {
                               setState(() {
                                 listcart.remove(listcart[index]);
                   
                               });
                            }, icon: Icon(Icons.delete))
                          ),
                        ),
                      ),),
                   ),
                 /* Container(
                    color: darkGrey,
                    child: Consumer<CartNotEmpty>(builder: (context, value, child) {
                      return  Text('Total price = ${CartNotEmpty().totalPrice} DT');
                    },)
                  )*/
                 ],
               )
            
    
    );
  }
}
