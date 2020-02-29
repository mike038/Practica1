import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/home/home.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xff214254),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 125,
            ),
            Image.asset(
              'assets/images/cupping.png',
              width: 200,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nombre completo:',
                  style: TextStyle(
                      fontFamily: 'Grotezk', fontSize: 12, color: Colors.white),
                ),
              ),
            ),
             SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
             Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password:',
                  style: TextStyle(
                      fontFamily: 'Grotezk', fontSize: 12, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(0),
                    ),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Color(0xffBCB0A1),
              child: Text(
                'ENTRAR',
                style: TextStyle(
                  fontFamily: 'Grotezk',
                ),
              ),
              padding: EdgeInsets.fromLTRB(125, 20, 125, 20),
              onPressed: () => {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Home(
                    title: APP_TITLE,
                  ),
                )),
              },
            ),
          ],
        ),
      ),
    );
  }
}
