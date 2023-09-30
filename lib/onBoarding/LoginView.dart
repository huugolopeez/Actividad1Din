import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {

  late BuildContext _context;

  onClickRegister() {
    Navigator.of(_context).pushNamed('/registerview');
  }

  @override
  Widget build(BuildContext context) {

    _context = context;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.deepPurpleAccent,
        title: Center(child: Text('Login')),
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
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {  }, child: Text('Login')),
              TextButton(onPressed: () { onClickRegister(); }, child: Text('Register')),
            ],
          )
        ],
      ),
    );

  }
}