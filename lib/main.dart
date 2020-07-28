import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shopping'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(child: MainPage()),
    ),
  ));
}

class MainPage extends StatelessWidget {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: FocusTraversalGroup(
        child: Form(
          autovalidate: true,
          onChanged: () {
            Form.of(primaryFocus.context).save();
          },
          child: Expanded(
            child: Center(
              child: Wrap(
                children: List<Widget>.generate(5, (int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tight(Size(200, 50)),
                      child: TextFormField(
                        onSaved: (String value) {
                          print('Value for field $index saved as "$value"');
                        },
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
