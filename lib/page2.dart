import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final providerOfgetRandomNumber = StateProvider.autoDispose(
  (ref) {
    final random = Random();

    return random.nextInt(100);
  },
);

class Page2 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int myNumber = ref.watch(providerOfgetRandomNumber);

    return Scaffold(
      body: Center(
        child: Text(
          '$myNumber',
          style: const TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
