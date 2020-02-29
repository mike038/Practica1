import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';

class ItemCups extends StatefulWidget {
  final ProductCups cups;
  ItemCups({
    Key key,
    @required this.cups,
  }) : super(key: key);

  @override
  _ItemCupsState createState() => _ItemCupsState();
}

class _ItemCupsState extends State<ItemCups> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
      color: Colors.white,
      child: Container(
        color: Color(0xffBCB0A1),
        width: 100,
        height: 160,
        child: Row(
          children: <Widget>[
            Padding(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 35,
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      'Taza',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'OpenSans', fontSize: 15),
                    ),
                  ),
                  Container(
                    width: 105,
                    padding: EdgeInsets.only(bottom: 0),
                    alignment: Alignment.center,
                    child: Text(
                      '${widget.cups.productTitle}',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '\$${widget.cups.productPrice}',
                    style: TextStyle(fontFamily: 'OpenSans', fontSize: 30),
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 5, right: 5, top: 10),
            ),
            Image.network(
              '${widget.cups.productImage}',
              width: 150,
              height: 150,
            ),
            Container(
              width: 10,
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 25,
                  onPressed: () => {
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
