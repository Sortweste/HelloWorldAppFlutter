import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  final textStyle = TextStyle(
    fontSize: 24,
  );

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
                style: textStyle
            ),
            Text('0',
              style: textStyle,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

}