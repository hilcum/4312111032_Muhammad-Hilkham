import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';

void main() => runApp(const MyApp());

const List<Key> keys = [
  Key("Asset"),
  Key("AssetDialog"),
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giff Dialog Demo',
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Nunito'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giff Dialog Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              key: keys[0],
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              child: const Text(
                'Asset Giff',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AssetGiffDialog(
                    key: keys[1],
                    image: Image.asset(
                      'assets/jaket.gif',
                      fit: BoxFit.cover,
                    ),
                    title: const Text(
                      'Men Wearing Jackets',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                    entryAnimation: EntryAnimation.bottomRight,
                    description: const Text(
                      'This is a men wearing jackets dialog box. This library helps you easily create fancy giff dialog.',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                    onOkButtonPressed: () {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
