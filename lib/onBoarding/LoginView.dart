import 'package:actividad1/custom/HLTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {

  late BuildContext _context;
  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPass = TextEditingController();

  throwSnackBar(String error) {
    SnackBar snackBar = SnackBar(content: Text(error));
    ScaffoldMessenger.of(_context).showSnackBar(snackBar);
  }

  onClickRegister() {
    Navigator.of(_context).popAndPushNamed('/registerview');
  }

  onClickLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: tecEmail.text,
        password: tecPass.text,
      );
      Navigator.of(_context).popAndPushNamed('/homeview');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') throwSnackBar('-- Formato del email incorrecto --');
      else if (e.code == 'invalid-login-credentials') throwSnackBar('-- Credenciales incorrectas --');
    }
  }

  @override
  Widget build(BuildContext context) {

    _context = context;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.deepPurpleAccent,
        title: Center(child: Text('Login'))
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            child: HLTextField(sHint: 'Username', tecController: tecEmail)
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            child: HLTextField(sHint: 'Password', tecController: tecPass, bObsucure: true)
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                child: TextButton(onPressed: () { onClickLogin(); },
                  child: Text('Login'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                    foregroundColor: MaterialStateProperty.all(Colors.white)
                  )
                )
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                child: TextButton(onPressed: () { onClickRegister(); },
                  child: Text('Register'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                    foregroundColor: MaterialStateProperty.all(Colors.white)
                  )
                )
              )
            ]
          )
        ]
      )
    );
  }
}