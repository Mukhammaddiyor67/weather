import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home: Scaffold(
        body: MyApp(),
      )
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
