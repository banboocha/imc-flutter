import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class AndroidInput extends StatelessWidget {

  var ctrl = new MoneyMaskedTextController();
  var text = "Text";

  AndroidInput({
    @required this.ctrl,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctrl,
      keyboardType: TextInputType.number,
      style: TextStyle(
        fontSize: 40,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: text,
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}