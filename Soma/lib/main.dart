import 'package:flutter/material.dart';

void main() => runApp(SomaApp());

class SomaApp extends StatefulWidget {
  @override
  _SomaAppState createState() => _SomaAppState();
}

class _SomaAppState extends State<SomaApp> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  double resultado = 0;

  double somarValores() {
    double valor1 = double.tryParse(controller1.text) ?? 0;
    double valor2 = double.tryParse(controller2.text) ?? 0;
    return valor1 + valor2;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Somar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Digite um valor:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: TextField(
                  controller: controller1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: "Entre com o primeiro valor:",
                  ),
                  cursorWidth: 1,
                  cursorColor: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Digite um valor:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: "Entre com o segundo valor:",
                  ),
                  cursorWidth: 1,
                  cursorColor: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, textStyle: TextStyle(fontSize: 40)),
                onPressed: () {
                  setState(() {
                    resultado = somarValores();
                  });
                },
                child: Text("Somar"),
              ),
              Text(
                "A soma dos valores é: $resultado",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
