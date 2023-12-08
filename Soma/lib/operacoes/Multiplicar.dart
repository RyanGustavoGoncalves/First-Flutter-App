import 'package:flutter/material.dart';

class Multiplicar {
  multiplicarValores(
      TextEditingController controller1, TextEditingController controller2) {
    double valor1 = double.tryParse(controller1.text) ?? 0;
    double valor2 = double.tryParse(controller2.text) ?? 0;
    return valor1 * valor2;
  }
}
