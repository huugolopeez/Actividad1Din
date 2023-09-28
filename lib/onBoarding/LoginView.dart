import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Scaffold scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text('Login'),
        )
      ),
      body: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Escribe tu usuario',
                  ),
                )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Escribe tu contraseña',
                  ),
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () { }, child: Text('Login'),),
                TextButton(onPressed: () { }, child: Text('Registrar'),)
              ],
            ),
          ]
        ),
    );

    return scaffold;
  }
}