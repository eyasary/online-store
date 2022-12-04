import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'fruitcard.dart';

class Interface extends StatelessWidget {
  final List liste;
  const Interface({Key? key, required this.liste}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: liste.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>Fruitcard(
                    image: liste[index].img,
                     name:liste[index].name, descp:liste[index].descp, price:liste[index].price)
                ),
              );
  }
}