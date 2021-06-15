import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String display = '';
  String operador = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: [
          _buildDisplay(),
          _buildButtons(),
        ],
      ),
    );
  }

  Widget _buildDisplay() {
    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2),
        ),
        child: Text(
          display,
          style: TextStyle(fontSize: 40, color: Colors.white),
          textAlign: TextAlign.end,
        ));
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    precionarBotao('7');
                  },
                  child: Container(
                    height: 20,
                    width: 10,
                    color: Colors.blue,
                    child: Text('7'),
                  )),
              ElevatedButton(
                  onPressed: () {
                    precionarBotao('4');
                  },
                  child: Container(
                    height: 20,
                    width: 10,
                    color: Colors.blue,
                    child: Text('4'),
                  )),
              ElevatedButton(
                  onPressed: () {
                    precionarBotao('1');
                  },
                  child: Container(
                    height: 20,
                    width: 10,
                    color: Colors.blue,
                    child: Text('1'),
                  )),
              ElevatedButton(
                  onPressed: () {
                    limparDisplay();
                  },
                  child: Container(
                    height: 20,
                    width: 10,
                    color: Colors.blue,
                    child: Text('C'),
                  )),
            ],
          ),
        ),
        Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  precionarBotao('8');
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('8'),
                )),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('5');
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('5'),
                )),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('2');
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('2'),
                )),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('0');
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('0'),
                )),
          ],
        ),
        Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  precionarBotao('9');
                },
                child: Container(
                    height: 20,
                    width: 10,
                    color: Colors.blue,
                    child: Text('9'))),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('6');
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('6'),
                )),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('3');
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('3'),
                )),
            ElevatedButton(
                onPressed: () {
                  calcular();
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('='),
                )),
          ],
        ),
        Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  precionarBotao('/');
                  operador = '/';
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('/'),
                )),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('*');
                  operador = '*';
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('*'),
                )),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('-');
                  operador = '-';
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('-'),
                )),
            ElevatedButton(
                onPressed: () {
                  precionarBotao('+');
                  operador = '+';
                },
                child: Container(
                  height: 20,
                  width: 10,
                  color: Colors.blue,
                  child: Text('+'),
                )),
          ],
        ),
      ],
    );
  }

  void calcular() {
    List<String> valores = display.split(operador);

    int valor1 = int.parse(valores[0]);
    int valor2 = int.parse(valores[1]);
    num resultado = 0;

    if (operador == '+') {
      resultado = valor1 + valor2;
    }
    if (operador == '-') {
      resultado = valor1 - valor2;
    }
    if (operador == '*') {
      resultado = valor1 * valor2;
    }
    if (operador == '/') {
      resultado = valor1 / valor2;
    }
    setState(() {
      display = resultado.toString();
    });
  }

  void precionarBotao(String text) {
    setState(() {
      display += text;
    });
  }

  void limparDisplay() {
    setState(() {
      display = "";
    });
  }
}