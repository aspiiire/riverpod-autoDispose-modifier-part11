import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: const Icon(
            Icons.next_plan_outlined,
          ),
          iconSize: 100,
          onPressed: () {
            Navigator.of(context).pushNamed('/page2');
          },
        ),
      ),
    );
  }
}
