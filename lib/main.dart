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
        title: Center(child: Text('Calculadora')),
      ),
      body: Column(
        children: [
          _buildDisplay(),
          _buildButtons1(),
          _buildButtons2(),
          _buildButtons3(),
          _buildButtons4(),
        ],
      ),
    );
  }

  Widget _buildDisplay() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2),
          color: Colors.green),
      child: Text(
        display,
        style: TextStyle(fontSize: 40, color: Colors.white),
        textAlign: TextAlign.end,
      ),
    );
  }

  Widget _buildButtons1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('7');
            },
            child: Text(
              '7',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('8');
            },
            child: Text(
              '8',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('9');
            },
            child: Text(
              '9',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('*');
              operador = '*';
            },
            child: Text(
              '*',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButtons2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('4');
            },
            child: Text(
              '4',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('5');
            },
            child: Text(
              '5',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('6');
            },
            child: Text(
              '6',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('/');
              operador = '/';
            },
            child: Text(
              '/',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButtons3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('1');
            },
            child: Text(
              '1',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('2');
            },
            child: Text(
              '2',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('3');
            },
            child: Text(
              '3',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('-');
              operador = '-';
            },
            child: Text(
              '-',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButtons4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('C');
              limparDisplay();
            },
            child: Text(
              'C',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('0');
            },
            child: Text(
              '0',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              calcular();
            },
            child: Text(
              '=',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              precionarBotao('+');
              operador = '+';
            },
            child: Text(
              '+',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  void precionarBotao(String text) {
    setState(() {
      display += text;
    });
  }

  void limparDisplay() {
    setState(() {
      display = '';
    });
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
    if (operador == '/') {
      resultado = valor1 / valor2;
    }
    if (operador == '*') {
      resultado = valor1 * valor2;
    }

    setState(() {
      display = resultado.toString();
    });
  }
}
