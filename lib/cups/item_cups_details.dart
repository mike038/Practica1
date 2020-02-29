import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';
import 'package:practica_integradora_uno/payment/payment_page.dart';

class ItemCupsDetails extends StatefulWidget {
  final ProductCups cups;
  ItemCupsDetails({
    Key key,
    @required this.cups,
  }) : super(key: key);

  @override
  _ItemCupsDetailsState createState() => _ItemCupsDetailsState();
}

class _ItemCupsDetailsState extends State<ItemCupsDetails> {
  @override
  Widget build(BuildContext context) {
    bool _liked = false;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff214254),
        title: Text('${widget.cups.productTitle}'),
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
                      '${widget.cups.productImage}',
                      width: 215,
                      height: 200,
                    ),
                    IconButton(
                      icon: Icon(
                        _liked ? Icons.favorite : Icons.favorite_border,
                      ),
                      iconSize: 25,
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
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
              ),
              child: Text(
                '${widget.cups.productTitle}',
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
                '${widget.cups.productDescription}',
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
                    padding: EdgeInsets.only(
                      right: 80,
                    ),
                    child: Text(
                      'TAMAÑOS DISPONIBLES',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Text(
                    '\$${widget.cups.productPrice}',
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
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 27),
                  child: FlatButton(
                    child: Text('Azul'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          widget.cups.productColor = ProductColor.BLUE;
                          widget.cups.productPrice =
                              widget.cups.productPriceCalculator();
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 27),
                  child: FlatButton(
                    child: Text('Verde'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          widget.cups.productColor = ProductColor.GREEN;
                          widget.cups.productPrice =
                              widget.cups.productPriceCalculator();
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 27),
                  child: FlatButton(
                    child: Text('Rojo'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          widget.cups.productColor = ProductColor.RED;
                          widget.cups.productPrice =
                              widget.cups.productPriceCalculator();
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
          )
        ],
      ),
    );
  }
}
