import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_test/home/controller/controller.dart';

addButton() => Consumer(
      builder: (context, ref, child) {
        final counterController = ref.read(counterProvider.notifier);
        return ElevatedButton(
          onPressed: () => counterController.add(),
          child: Text('add'),
        );
      },
    );
