import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:imc/android/widgets/calculate-form.widget.dart';
import 'package:imc/shared/logo.widget.dart';

class HomePage extends StatelessWidget {
  var _scaffoldkey = new GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();
  var _pesoCtrl = new MoneyMaskedTextController();
  var _alturaCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Logo(),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: CalculateForm(
              formKey: _formKey,
              pesoCtrl: _pesoCtrl,
              alturaCtrl: _alturaCtrl,
              func: calculate,
            ),
          ),
        ],
      ),
    );
  }

  Function calculate(){
    double peso =
    double.parse(_pesoCtrl.text.replaceAll(new RegExp(r'[,.]'),'')) / 100;

    double altura =
    double.parse(_alturaCtrl.text.replaceAll(new RegExp(r'[,.]'),'')) / 100;
    double res = peso / (altura * altura);

    var message = "Obesidade grau 3";
    if(res > 40.0 ){
      message = "Obesidade grau 3";
    } else if(res > 35 &&  res < 40 ) {
      message = "Obesidade grau 2";
    } else if(res > 30 &&  res < 35 ) {
      message = "Obesidade grau 1";
    }  else if(res > 25 &&  res < 30 ) {
      message = "Sobrepeso";
    }  else if(res > 18.5 &&  res < 25 ) {
      message = "Normal";
    }  else if(res < 18.5 ) {
      message = "Abaixo do peso";
    } 

    final snackBar = SnackBar(
      content: Text(message),
    );
    _scaffoldkey.currentState.showSnackBar((snackBar));
    return null;
  }
  
}