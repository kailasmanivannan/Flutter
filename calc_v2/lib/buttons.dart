//import 'main.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function pressedRef;
  Buttons(this.pressedRef);
  Widget build(BuildContext context) {
    return (GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 2,
      crossAxisSpacing: 0,
      children: [
        ElevatedButton(
          onPressed: () => {pressedRef('c')},
          child: Text('C',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('+/-')},
          child: Text('+/-',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('%')},
          child: Text('%',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('DEL')},
          child: Text('DEL',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('7')},
          child: Text('7',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('8')},
          child: Text('8',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('9')},
          child: Text('9',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('/')},
          child: Text('/',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('4')},
          child: Text('4',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('5')},
          child: Text('5',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('6')},
          child: Text('6',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('*')},
          child: Text('*',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
         ElevatedButton(
          onPressed: () => {pressedRef('1')},
          child: Text('1',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
         ElevatedButton(
          onPressed: () => {pressedRef('2')},
          child: Text('2',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
         ElevatedButton(
          onPressed: () => {pressedRef('3')},
          child: Text('3',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('-')},
          child: Text('-',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('0')},
          child: Text('0',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('.')},
          child: Text('.',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('=')},
          child: Text('=',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
        ElevatedButton(
          onPressed: () => {pressedRef('+')},
          child: Text('+',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.black, width: 2),
            padding: EdgeInsets.all(10),
          ),
        ),
      ],
    ));
  }
}
