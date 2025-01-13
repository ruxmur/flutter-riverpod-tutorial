import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod_tutorial/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {
  // initial value
  @override
  Set<Product> build() {
    return const{
      Product(id: '1', title: 'Groovy Shorts', price: 12, image: 'assets/shorts.png'),
    };
  }

  // methods to update state
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() => CartNotifier());