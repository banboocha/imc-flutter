import 'package:flutter/widgets.dart';
import 'package:imc/android/widgets/android-button.widget.dart';

class Button extends StatelessWidget {
  Function func;
  var text = "Text";

  Button({
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AndroidButton(
      text: text,
      func: func,
    );
  }
}
