import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.orangeAccent,
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
              child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white70,
                onPressed: () {
                  print('show the text');
                },
                padding: const EdgeInsets.all(8.8),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
