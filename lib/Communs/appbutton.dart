import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site/ProductDesc/cartnotempty.dart';
import 'package:site/list.dart';

import 'colors.dart';

class AppButton extends StatefulWidget {
  final String label,img,name;
  final double roundness;
  final dynamic price;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Widget? trailingWidget;
  final Function? onPressed;

  const AppButton({
    Key? key,
    required this.label,
    required this.img,
    required this.name,
    this.roundness = 18,
    this.fontWeight = FontWeight.bold,
    this.padding = const EdgeInsets.symmetric(vertical: 24),
    this.trailingWidget,
    this.onPressed,
    required this.price,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotEmpty>(builder: (context, value, child) {
       return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
             setState(() {
               listcart.add(Fruit(widget.img, widget.name, widget.price, ''));
               print('total price= ${CartNotEmpty().totalPrice}');
               showDialog(context: context, builder: (context) => AlertDialog(
                title: Text('${widget.name} is added to your cart '),
                content: Image.asset('images/tick.png'),
               ),);
               
             });
        },
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.roundness),
          ),
          elevation: 0,
          backgroundColor: primaryColor,
          textStyle: TextStyle(
            color: Colors.white,
            fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
            fontWeight: widget.fontWeight,
          ),
          padding: widget.padding,
          minimumSize: const Size.fromHeight(50),
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            Center(
              child: Text(
                widget.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: widget.fontWeight,
                ),
              ),
            ),
            if (widget.trailingWidget != null)
              Positioned(
                top: 0,
                right: 25,
                child: widget.trailingWidget!,
              ),
          ],
        ),
      ),
    );
    },);
  }
}