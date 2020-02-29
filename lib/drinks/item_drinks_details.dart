import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/drinks/drinks_page.dart';
import 'package:practica_integradora_uno/drinks/item_drinks.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/payment/payment_page.dart';

class ItemDrinkDetails extends StatefulWidget {
  final ProductDrinks drink;
  ItemDrinkDetails({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemDrinkDetailsState createState() => _ItemDrinkDetailsState();
}

class _ItemDrinkDetailsState extends State<ItemDrinkDetails> {
  bool _liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff214254),
        title: Text('${widget.drink.productTitle}'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            child: Container(
              width: 300,
              height: 250,
              color: Color(0xffFABF7C),
              child: Center(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 35,
                    ),
                    Image.network(
                      '${widget.drink.productImage}',
                      width: 215,
                    ),
                    IconButton(
                      icon: Icon(
                        _liked ? Icons.favorite : Icons.favorite_border,
                      ),
                      iconSize: 20,
                      onPressed: () {
                        setState(() {
                          _liked = !(_liked);
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
              ),
              child: Text(
                '${widget.drink.productTitle}',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Grotesk',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
                right: 15,
                bottom: 15,
              ),
              child: Text(
                '${widget.drink.productDescription}',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
                right: 15,
                bottom: 15,
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 80),
                    child: Text(
                      'TAMAÑOS DISPONIBLES',
                      style: TextStyle(fontFamily: 'OpenSans', fontSize: 12),
                    ),
                  ),
                  Text(
                    '\$${widget.drink.productPrice}',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    right: 27,
                  ),
                  child: FlatButton(
                    child: Text('Chico'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        18.0,
                      ),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          widget.drink.productSize = ProductSize.CH;
                          widget.drink.productPrice =
                              widget.drink.productPriceCalculator();
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 27),
                  child: FlatButton(
                    child: Text('Mediano'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                      setState(() {
                         widget.drink.productSize = ProductSize.M;
                          widget.drink.productPrice =
                              widget.drink.productPriceCalculator();
                      },);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 27),
                  child: FlatButton(
                    child: Text('Grande'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          widget.drink.productSize = ProductSize.G;
                          widget.drink.productPrice =
                              widget.drink.productPriceCalculator();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              RaisedButton(
                child: Text(
                  'Agregar al carrito',
                  style: TextStyle(fontFamily: 'OpenSans'),
                ),
                onPressed: () => {},
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                child: Text(
                  'Comprar ahora',
                  style: TextStyle(fontFamily: 'OpenSans'),
                ),
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => PaymentPage(),
                    ),
                  ),
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
