import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/drinks/item_drinks.dart';
import 'package:practica_integradora_uno/drinks/item_drinks_details.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/profile.dart';

class DrinksPage extends StatefulWidget {
  final List<ProductDrinks> drinksList;
  DrinksPage({
    Key key,
    @required this.drinksList,
  }) : super(key: key);

  @override
  _DrinksPageState createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff214254),
        title: Text("Bebidas"),
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
        itemCount: widget.drinksList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ItemDrinkDetails(
                    drink: widget.drinksList[index],
                  ),
                ),
              ),
            },
            child: ItemDrinks(
              drink: widget.drinksList[index],
            ),
          );
        },
      ),
    );
  }
}
