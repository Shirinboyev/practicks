import'package:flutter/material.dart';
import 'package:practicks/first.dart';
import 'package:practicks/second.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/second',
      routes: {
        '/first':((context) =>
           First()
        
        ),
        '/second':(context) => Second()
      },
    );
  }
}