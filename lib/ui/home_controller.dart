import 'dart:math';

import 'package:flutter/material.dart';

import '../strings.dart';

class HomeController{
  var ageController = TextEditingController(text: "");
  var heightController = TextEditingController(text: "");
  var weightController = TextEditingController(text: "");
  var message = Strings.imc_default;

  generateDiagnosis(){
    message = _getMessage(
      imc: _calcImc(
        height: double.parse(heightController.text),
        weight: double.parse(weightController.text),
        age: int.parse(ageController.text)
      )
    );
  }

  double _calcImc({
    @required double height,
    @required double weight,
    age: int
  }) {
    return weight / pow(height/100, 2);
  }

  String _getMessage({
    imc: double
  }) {
    if      (imc <= 0)   return Strings.imc_default;
    else if (imc < 17)   return Strings.imc_very_low;
    else if (imc < 18.5) return Strings.imc_low;
    else if (imc < 25)   return Strings.imc_normal;
    else if (imc < 30)   return Strings.imc_above;
    else if (imc < 35)   return Strings.imc_obesity_i;
    else if (imc < 40)   return Strings.imc_obesity_ii;
    else                 return Strings.imc_obesity_iii;
  }
}