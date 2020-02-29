import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/login/login.dart';
import 'package:practica_integradora_uno/login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _flagTerminos = false;
  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xff214254),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
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
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
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
                controller: _emailController,
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
              height: 20,
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
              height: 15,
            ),
            CheckboxListTile(
              title: Text(
                'ACEPTO LOS TÉRMINOS Y CONDICIONES DE USO',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Grotezk',
                  fontSize: 12,
                ),
              ),
              value: _flagTerminos,
              
              onChanged: (bool value) {
                setState(() {
                  _flagTerminos = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              color: Color(0xffBCB0A1),
              child: Text(
                'REGISTRATE',
                style: TextStyle(
                  fontFamily: 'Grotezk',
                ),
              ),
              padding: EdgeInsets.fromLTRB(125, 20, 125, 20),
              onPressed: () => {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Login(),
                )),
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '¿Ya tienes una cuenta?',
              style: TextStyle(color: Colors.white),
            ),
            MaterialButton(
              child: Text(
                'INGRESA',
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
