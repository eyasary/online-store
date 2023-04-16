import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:site/ProductDesc/cartnotempty.dart';

import 'Communs/appbutton.dart';
import 'Communs/counter.dart';
import 'Communs/icon.dart';

class DescPage extends StatefulWidget {
  final String img, name, desc;
  final double price;
  const DescPage(
      {super.key,
      required this.img,
      required this.name,
      required this.desc,
      required this.price});

  @override
  State<DescPage> createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return CartNotEmpty();
    },
    child: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(widget.img),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      widget.name,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      widget.desc,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    //trailing: FavoriteToggleIcon(),
                  ),
                  Row(
                      children: [
                        ItemCounterWidget(
                          onAmountChanged: (newAmount) {
                            setState(() {
                              amount = newAmount;
                            });
                          },
                        ),
                        Spacer(),
                        Text(
                          "${getTotalPrice().toStringAsFixed(2)}DT",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Divider(),
                    getProductDataRowWidget("Product Details"),
                    Divider(),
                      getProductDataRowWidget(
                      "Review",
                      customWidget: ratingWidget(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05),
                    AppButton(
                      img:widget.img,
                      name:widget.name,
                      price:getTotalPrice(),
                      label: "Add To Basket", 
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
    double getTotalPrice() {
    return amount * widget.price;
  }
   Widget getProductDataRowWidget(String label, {Widget? customWidget}) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Row(
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
          Spacer(),
          if (customWidget != null) ...[
            customWidget,
            SizedBox(
              width: 20,
            )
          ],
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }
    Widget ratingWidget() {
    Widget starIcon() {
      return Icon(
        Icons.star,
        color: Color(0xffF3603F),
        size: 20,
      );
    }

    return Row(
      children: [
        starIcon(),
        starIcon(),
        starIcon(),
        starIcon(),
        starIcon(),
      ],
    );
  }
}
