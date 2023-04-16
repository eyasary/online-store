import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FieldText extends StatelessWidget {
  final TextEditingController val1;
  final String hint;
  const FieldText({super.key, required this.val1, required this.hint});

  @override
  Widget build(BuildContext context) {
    return           TextField(
            controller: val1,
            obscureText: false,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green)
              ),
              hintText:hint,
              hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
            ),
          );
  }
}