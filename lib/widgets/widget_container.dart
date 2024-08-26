import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  final String? text;
  final Color? color;
  final String? route;
  WidgetContainer({super.key,  this.text, this.color, this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text!),
    );
  }
}
