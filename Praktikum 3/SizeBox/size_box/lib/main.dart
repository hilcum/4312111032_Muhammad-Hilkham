import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pratikum3',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizeBox'),
      ),
       body: const Column(
            children: <Widget>[
                Text("A", style: TextStyle(fontSize: 30.0),),
                    SizedBox(height: 20.0,),
                Text("B", style: TextStyle(fontSize: 30.0),)
            ],
        )
    );
  }
}