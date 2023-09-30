import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {

  late BuildContext _context;
  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPass = TextEditingController();

  onClickRegister() {
    Navigator.of(_context).pushNamed('/registerview');
  }

  onClickLogin() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: tecEmail.text,
        password: tecPass.text,
      );
      print(' --> Funciona.');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') print(' --> Formato del email incorrecto.');
      else if (e.code == 'invalid-login-credentials') print(' --> Credenciales incorrectas.');
      //else if (e.code == 'wrong-password') print(' --> La contraseña es incorrecta.');
      //else if (e.code == 'user-not-found') print(' --> No se encuentra el email.');
    }
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
              controller: tecEmail,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            child: TextFormField(
              controller: tecPass,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () { onClickLogin(); }, child: Text('Login')),
              TextButton(onPressed: () { onClickRegister(); }, child: Text('Register')),
            ],
          )
        ],
      ),
    );

  }
}