import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});
  static const routeName = "Page6";
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




