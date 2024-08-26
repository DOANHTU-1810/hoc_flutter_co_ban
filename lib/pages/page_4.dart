import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});
  static const routeName = "Page4";
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





