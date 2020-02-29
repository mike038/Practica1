import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';
import 'package:practica_integradora_uno/payment/payment_page.dart';

class ItemGrainsDetails extends StatefulWidget {
  final ProductGrains grains;
  ItemGrainsDetails({
    Key key,
    @required this.grains,
  }) : super(key: key);

  @override
  _ItemGrainsDetailsState createState() => _ItemGrainsDetailsState();
}

class _ItemGrainsDetailsState extends State<ItemGrainsDetails> {
  bool _liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff214254),
        title: Text('${widget.grains.productTitle}'),
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
                      width: 70,
                    ),
                    Image.network(
                      '${widget.grains.productImage}',
                      width: 150,
                      height: 200,
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
                '${widget.grains.productTitle}',
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
                '${widget.grains.productDescription}',
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
                    '\$${widget.grains.productPrice}',
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
                  padding: EdgeInsets.only(
                    right: 27,
                    left: 60,
                  ),
                  child: FlatButton(
                    child: Text('250 G'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                      setState(() {
                        widget.grains.productWeight = ProductWeight.CUARTO;
                        widget.grains.productPrice =
                            widget.grains.productPriceCalculator();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 27),
                  child: FlatButton(
                    child: Text('1 K'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: () {
                       setState(() {
                        widget.grains.productWeight = ProductWeight.KILO;
                        widget.grains.productPrice =
                            widget.grains.productPriceCalculator();
                      });
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
