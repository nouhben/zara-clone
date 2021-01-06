import 'package:zara_clone/models/product.dart';

class Cart {
  const Cart({this.product, this.numberOfInstances});

  final Product product;
  final int numberOfInstances;
}
