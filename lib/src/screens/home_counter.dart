import 'package:flutter/material.dart';

class Counter extends StatefulWidget{

  @override
  createState() => _CounterState();

}

class _CounterState extends State<Counter>{

  final _textStyle = TextStyle(
    fontSize: 24,
  );

  int _count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi primer Flutter!'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks:',
                  style: _textStyle
              ),
              Text('$_count',
                style: _textStyle,
              ),
            ],
          )
      ),
      floatingActionButton: _rowButtons()
    );
  }


Widget _rowButtons() =>
    Row(
      children: <Widget>[
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: _substract,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        )
      ],
    );

  void _reset(){
    setState(() {
      _count=0;
    });
  }

  void _substract(){
    setState(() {
      _count--;
    });
  }

  void _add(){
    setState(() {
      _count++;
    });
  }

}

