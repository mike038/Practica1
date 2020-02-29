import 'package:flutter/foundation.dart';
import 'dart:math';

enum ProductColor { RED, BLUE, GREEN }

class ProductCups {
  final String productTitle; // nombre del producto
  final String productDescription; // descripcion del producto
  final String productImage; // url de imagen del producto
  ProductColor productColor; // tamano del producto
  double productPrice; // precio del producto autocalculado
  final int productAmount; // cantidad de producto por comprar
  final bool liked;

  ProductCups({
    @required this.productTitle,
    @required this.productDescription,
    @required this.productImage,
    @required this.productColor,
    @required this.productAmount,
    this.liked = false,
  }) {
    // inicializa el precio de acuerdo al weight del producto
    productPrice = productPriceCalculator();
  }

  double productPriceCalculator() {
    if (this.productColor == ProductColor.GREEN)
      return (20 + Random().nextInt(40)).toDouble();
    if (this.productColor == ProductColor.BLUE)
      return (40 + Random().nextInt(60)).toDouble();
    if (this.productColor == ProductColor.RED)
      return (40 + Random().nextInt(80)).toDouble();
    return 9999.0;
  }
}
