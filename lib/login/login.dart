import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/login/login_page.dart';
import 'package:practica_integradora_uno/login/register_page.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff214254),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/images/cupping.png',
              width: 250,
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              child: Text(
                'REGISTRATE',
                style: TextStyle(fontFamily: 'Grotezk'),
              ),
              color: Color(0xffBCB0A4),
              padding: EdgeInsetsDirectional.fromSTEB(125, 15, 125, 15),
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => RegisterPage(),
                  ),
                ),
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              child: Text(
                'INGRESA',
                style: TextStyle(fontFamily: 'Grotezk'),
              ),
              color: Color(0xffBCB0A4),
              padding: EdgeInsets.fromLTRB(137, 15, 137, 15),
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                ),
              },
            )
          ],
        ),
      ),
    );
  }
}
