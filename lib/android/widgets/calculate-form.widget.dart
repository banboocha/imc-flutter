import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:imc/shared/button.widget.dart';
import 'package:imc/shared/input.widget.dart';

class CalculateForm extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var pesoCtrl = new MoneyMaskedTextController();
  var alturaCtrl = new MoneyMaskedTextController();
  Function func;

  CalculateForm({
    @required this.formKey,
    @required this.pesoCtrl,
    @required this.alturaCtrl,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Input(
            ctrl: pesoCtrl,
            text: "Peso",
          ),
          SizedBox(
            height: 20,
          ),
           Input(
            ctrl: alturaCtrl,
            text: "Altura",
          ),
          SizedBox(
            height: 20,
          ),
          Button(
            text: "calcular",
            func: func,
          ),
        ],
      ),
    );
  }
}
