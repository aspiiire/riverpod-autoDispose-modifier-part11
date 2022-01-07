import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './page1.dart';
import './page2.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/page1': (ctx) => Page1(),
        '/page2': (ctx) => Page2(),
      },
      initialRoute: '/page1',
    );
  }
}
