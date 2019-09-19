import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:imc/android/widgets/android-input.widget.dart';

class Input extends StatelessWidget {
  var ctrl = new MoneyMaskedTextController();
  var text = "Text";

  Input({
    @required this.ctrl,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AndroidInput(
      ctrl: ctrl,
      text: text,
    );
  }
}
