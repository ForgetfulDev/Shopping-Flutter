import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv().load('.env');
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Shopping'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Center( child: Text("test"),
          ),
        ),
      ),
    ),
  );
}
