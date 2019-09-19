import 'package:flutter/material.dart';

class AndroidButton extends StatelessWidget {
  Function func;
  var text = "Text";

  AndroidButton({
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: FlatButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
            ),
          ),
          onPressed: func,
        ));
  }
}
