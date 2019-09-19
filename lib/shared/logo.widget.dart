import 'package:flutter/widgets.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      child: Image.asset("assets/strong.png"),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withOpacity(0.4),
        borderRadius: BorderRadius.circular(25)
      ),
    );
  }
}