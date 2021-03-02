import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var a = 0;
  void increment(){
    setState(() {
      a++;
    });
  }
  void decrement(){
    setState(() {
      if(a!=0)
        a--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "$a",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              margin: EdgeInsets.only(
                  left: 150.0, right: 150.0, top: 150.0, bottom: 100.0),
              width: 200,
              //height: 200,
            ),
            Container(
              child: ElevatedButton(
                onPressed: increment,
                child: Text(
                  'ADD',
                ),
              ),
              width: 140,
              height: 60,
              //margin: EdgeInsets.only(left: 0.0, right: 50.0, top: 10.0),
            ),
            Container(
              child: ElevatedButton(onPressed: decrement,child: Text("SUB"),), 
              margin: EdgeInsets.only(top: 100.0),
              width: 140,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
