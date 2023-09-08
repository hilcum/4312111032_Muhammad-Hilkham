import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Buttons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
            ),
            onPressed: () {},
            child: Text("Elevated Button"),
          ),
          SizedBox(height: 16.0), // Added some spacing
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lime,
            ),
            onPressed: () {},
            child: Text("Elevated Button"),
          ),
          SizedBox(height: 16.0), // Added some spacing
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent,
            ),
            onPressed: () {},
            child: Text("Text Button"),
          ),
        ],
      ),
    );
  }
}
