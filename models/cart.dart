import 'package:zara_clone/models/product.dart';

class Cart {
  const Cart({required this.product, required this.numberOfInstances});

  final Product product;
  final int numberOfInstances;
}
