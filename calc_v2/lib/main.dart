import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalcState();
  }
}

class CalcState extends State<Calc> {
  var stackDisplay = '';
  var result = '';
  void theAnswer() {
    Parser p = Parser();
    Expression exp = p.parse(stackDisplay);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
    });
  }

  void buttonPressed(String a) {
    switch (a) {
      case 'c':
        setState(() {
          stackDisplay = '';
          result = '';
        });
        break;
      case 'DEL':
        setState(() {
          stackDisplay = stackDisplay.substring(0, stackDisplay.length - 1);
        });
        break;
      case '=':
        theAnswer();
        break;
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '.':
      case '+':
      case '-':
      case '*':
      case '/':
      case '%':
        setState(() {
          stackDisplay += a;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('calculator'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                //flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          '$result',
                          style: TextStyle(
                            backgroundColor: Colors.black,
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.black,
                        padding: EdgeInsets.all(20.0),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        alignment: Alignment.centerRight,
                        color: Colors.black,
                        child: Text(
                          '$stackDisplay',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Buttons(buttonPressed),
                flex: 3,
              )
            ],
          ),
        ));
  }
}
