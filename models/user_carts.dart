import 'package:flutter/foundation.dart';

import 'cart.dart';

class UserCarts with ChangeNotifier {
  List<Cart> carts = [];
  double price = 0.0;
  //total price = price - discounts + shipping + taxes
  UserCarts() {
    for (var item in carts) {
      price += item.product.price * item.numberOfInstances;
    }
  }
  void add(Cart cart) {
    if (!carts.contains(cart)) {
      this.carts.add(cart);
      price += cart.product.price;
      notifyListeners();
    }
    print('added a cart: now you have ${carts.length} items');
  }

  void remove(Cart cart) {
    if (carts.contains(cart)) {
      price -= cart.product.price * cart.numberOfInstances;
      this.carts.remove(cart);
      notifyListeners();
      print('added a cart: now you have ${carts.length} items');
    }
  }

  void removeAt(int index) {
    if (index > 0 && index < carts.length) {
      price -= carts[index].product.price * carts[index].numberOfInstances;
      this.carts.removeAt(index);
      notifyListeners();
    }
  }
}
