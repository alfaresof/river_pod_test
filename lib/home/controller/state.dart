import 'package:river_pod_test/home/controller/product_model.dart';

class CounterState {
  final int number;
  final String name;
  final List<ProductModel> products;

  CounterState(
      {required this.number, required this.name, required this.products});

  factory CounterState.Initial() {
    return CounterState(number: 0, name: 'ahmed', products: []);
  }

  CounterState copyWith(
      {int? number, String? name, List<ProductModel>? products}) {
    return CounterState(
        number: number ?? this.number,
        name: name ?? this.name,
        products: products ?? this.products);
  }
}
