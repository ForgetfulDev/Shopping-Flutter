import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv().load('.env');
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shopping'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(child: LoginPage()),
    ),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: () {
                  stderr.writeln('print me');
                },
                child: Text(
                  "Flat Button",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
