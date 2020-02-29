import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/grains/item_grains.dart';
import 'package:practica_integradora_uno/grains/item_grains_details.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';
import 'package:practica_integradora_uno/profile.dart';

class GrainsPage extends StatefulWidget {
  final List<ProductGrains> grainsList;
  GrainsPage({
    Key key,
    @required this.grainsList,
  }) : super(key: key);

  @override
  _GrainsPageState createState() => _GrainsPageState();
}

class _GrainsPageState extends State<GrainsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff214254),
        title: Text('Granos'),
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
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: widget.grainsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) =>
                      ItemGrainsDetails(grains: widget.grainsList[index]),
                ),
              ),
            },
            child: ItemGrains(
              grains: widget.grainsList[index],
            ),
          );
        },
      ),
    );
  }
}
