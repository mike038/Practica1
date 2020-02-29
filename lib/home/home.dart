import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cups/cups_page.dart';
import 'package:practica_integradora_uno/drinks/drinks_page.dart';
import 'package:practica_integradora_uno/grains/grains_page.dart';
import 'package:practica_integradora_uno/home/item_home.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/models/product_repository.dart';
import 'package:practica_integradora_uno/profile.dart';

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff214254),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Profile(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: _openDrinksPage,
            child: ItemHome(
              title: "Bebidas",
              image: "https://i.blogs.es/723857/cafe_como/450_1000.jpg",
            ),
          ),
          GestureDetector(
            onTap: _openGrainsPage,
            child: ItemHome(
                title: "Café en grano",
                image: "https://www.elplural.com/uploads/s1/34/84/2/cafe.jpeg"),
          ),
          GestureDetector(
            onTap: _openCupsPage,
            child: ItemHome(
              title: "Tazas",
              image:
                  "https://walkingmexico.com/wp-content/uploads/2015/02/Viajografi%CC%81a-Las-7-mejores-tazas-de-cafe%CC%81-en-el-D.F.-1.jpg",
            ),
          ),
        ],
      ),
    );
  }

  void _openDrinksPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => DrinksPage(
          drinksList: ProductRepository.loadProducts(ProductType.BEBIDAS),
        ),
      ),
    );
  }

  void _openGrainsPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => GrainsPage(
          grainsList: ProductRepository.loadProducts(ProductType.GRANO),
        ),
      ),
    );
  }

  void _openCupsPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CupsPage(
          cupsList: ProductRepository.loadProducts(ProductType.TAZAS),
        ),
      ),
    );
  }
}
