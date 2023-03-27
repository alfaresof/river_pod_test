import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_test/home/controller/controller.dart';
import 'package:river_pod_test/home/view/add_button.dart';

class Home extends ConsumerStatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    final counterState = ref.watch(counterProvider);
    final counterController = ref.read(counterProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: counterState.products.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(counterState.products[index].nameProduct!),
                  Text(counterState.products[index].size.toString()),
                ],
              );
            },
          ),
          ElevatedButton(
            onPressed: () => counterController.addProduct(),
            child: Text('add product'),
          ),
          Text(counterState.number.toString()),
          addButton(),
          ElevatedButton(
            onPressed: () => counterController.minus(),
            child: Text('minus'),
          ),
        ],
      ),
    );
  }
}
