import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cups/item_cups.dart';
import 'package:practica_integradora_uno/cups/item_cups_details.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';
import 'package:practica_integradora_uno/profile.dart';

class CupsPage extends StatefulWidget {
  final List<ProductCups> cupsList;
  CupsPage({
    Key key,
    @required this.cupsList,
  }) : super(key: key);

  @override
  _CupsPageState createState() => _CupsPageState();
}

class _CupsPageState extends State<CupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff214254),
        title: Text("Tazas"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => Profile()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: widget.cupsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ItemCupsDetails(
                    cups: widget.cupsList[index],
                  ),
                ),
              ),
            },
            child: ItemCups(
              cups: widget.cupsList[index],
            ),
          );
        },
      ),
    );
  }
}