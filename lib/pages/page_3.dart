import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  static const routeName = "Page3";
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




