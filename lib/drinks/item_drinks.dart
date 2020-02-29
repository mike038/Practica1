import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';

class ItemDrinks extends StatefulWidget {
  final ProductDrinks drink;
  ItemDrinks({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemDrinksState createState() => _ItemDrinksState();
}

class _ItemDrinksState extends State<ItemDrinks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
      color: Colors.white,
      child: Container(
        color: Color(0xffBCB0A1),
        width: 100,
        height: 150,
        child: Row(
          children: <Widget>[
            Padding(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 35,
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      'Café',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'OpenSans', fontSize: 15),
                    ),
                  ),
                  Container(
                    width: 110,
                    padding: EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: Text(
                      '${widget.drink.productTitle}',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '\$${widget.drink.productPrice}',
                    style: TextStyle(fontFamily: 'OpenSans', fontSize: 30),
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 5, right: 5, top: 10),
            ),
            Image.network(
              '${widget.drink.productImage}',
              width: 150,
            ),
            Container(
              width: 30,
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
