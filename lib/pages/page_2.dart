import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  static const routeName = "Page2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(routeName),
        ),
        body:  const Center(child: Text(routeName)
        )

    );
  }
}



