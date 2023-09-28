import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Scaffold scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text('Login'),)
      ),
    );

    return scaffold;
  }

}