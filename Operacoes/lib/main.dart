import 'package:flutter/material.dart';
import './operacoes/Soma.dart';
import './operacoes/Subtracao.dart';
import './operacoes/Multiplicar.dart';
import './operacoes/Dividir.dart';

void main() => runApp(Operacoes());

class Operacoes extends StatefulWidget {
  @override
  _OperacoesState createState() => _OperacoesState();
}

class _OperacoesState extends State<Operacoes> {
  double resultado = 0;

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  Soma soma = Soma();
  Subtracao subtracao = Subtracao();
  Multiplicar multiplicar = Multiplicar();
  Dividir dividir = Dividir();

  String getController1() {
    return controller1.text;
  }

  String getController2() {
    return controller2.text;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Funções matemáticas"),
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              textStyle: TextStyle(fontSize: 25),
                              minimumSize: Size(150, 0)),
                          onPressed: () {
                            setState(() {
                              resultado =
                                  soma.somarValores(controller1, controller2);
                            });
                          },
                          child: Text("Somar"),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(fontSize: 25),
                            minimumSize: Size(150, 0),
                          ),
                          onPressed: () {
                            setState(() {
                              resultado = subtracao.subtrairValores(
                                  controller1, controller2);
                            });
                          },
                          child: Text("Subtrair"),
                        ),
                      ],
                    ),
                    SizedBox(height: 200),
                    Column(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(fontSize: 25),
                            minimumSize: Size(150, 0),
                          ),
                          onPressed: () {
                            setState(() {
                              resultado = dividir.divirValores(
                                  controller1, controller2);
                            });
                          },
                          child: Text("Dividir"),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              textStyle: TextStyle(fontSize: 25),
                              minimumSize: Size(150, 0)),
                          onPressed: () {
                            setState(() {
                              resultado = multiplicar.multiplicarValores(
                                  controller1, controller2);
                            });
                          },
                          child: Text("Multiplicar"),
                        ),
                      ],
                    ),
                  ],
                ),
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
