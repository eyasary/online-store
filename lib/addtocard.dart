import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(right:20),
          width: MediaQuery.of(context).size.width/5,
          height: MediaQuery.of(context).size.height/15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border:Border.all(
              color: Colors.grey,
            )
        
          ),
          child: Icon(Icons.add_shopping_cart_outlined,color: Colors.grey[400],),
         ),
           Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height/15,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Colors.grey,
                onPressed: () =>null,
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
         
      ],
    );
  }
}