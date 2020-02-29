import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff214254),
        title: Text('Pago'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Elige tu metodo de pago:',
                style: TextStyle(
                  fontFamily: 'Opensans',
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10,
            ),
            Container(
              color: Color(0xff8B8175),
              height: 100,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Icon(
                      Icons.credit_card,
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Text(
                      'Tarjeta de credito',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.edit,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Color(0xff8B8175),
              height: 100,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Icon(
                      Icons.fastfood,
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Text(
                      'PayPal',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.edit,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Color(0xff8B8175),
              height: 100,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Icon(
                      Icons.card_giftcard,
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Text(
                      'Tarjeta de regalo',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.edit,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
