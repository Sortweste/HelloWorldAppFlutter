import 'package:flutter/material.dart';
import 'package:hello_world/src/screens/home_counter.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Center(
          child: Counter(),
        ),
      debugShowCheckedModeBanner: false,

    );
  }

}