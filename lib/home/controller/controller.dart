import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_test/home/controller/product_model.dart';
import 'package:river_pod_test/home/controller/state.dart';

final counterProvider =
    StateNotifierProvider<CounterNotifier, CounterState>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState.Initial());

  void add() {
    state = state.copyWith(number: state.number + 1);
  }

  void addProduct() {
    state.products
        .add(ProductModel(nameProduct: 'name', size: 100, price: 1000));
    print(state.products[0].nameProduct);
    state = state.copyWith(products: state.products);
  }

  void minus() {
    state = state.copyWith(number: state.number - 1);
  }
}
