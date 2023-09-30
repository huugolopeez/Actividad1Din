import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.deepPurpleAccent,
        title: Center(child: Text('Register'))
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {  }, child: Text('Register')),
              TextButton(onPressed: () {  }, child: Text('Cancel'))
            ],
          )
        ],
      ),
    );

  }
}