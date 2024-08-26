import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});
  static const routeName = "Page5";
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





