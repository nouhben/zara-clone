import 'package:zara_clone/models/product.dart';

enum ManShoesKind { BOOTS, LEATHER_BOOTS, SNEAKERS }
enum ManShirtsKind { BOOTS, LEATHER_BOOTS, SNEAKERS }
enum ManPantsKind { CHINOS, JEANS, SNEAKERS }

class ManProduct extends Product {
  final String name;
  ManProduct({
    required this.name,
  }) : super(price: 0.0, description: 'some', title: 'man', rating: 0.0, images: [], barcode: 'shjkhdfk098', uid: '9088hdj', colors: []);
}
