import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  void Function()? onTap;
  String label;
   MyButton({super.key, this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        width: double.infinity,
        margin: const EdgeInsets.only(top:24, bottom: 24),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: const Color(0xFF419F7D),
            borderRadius: BorderRadius.circular(30)
        ),
        child:  Center(child: Text(label,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16,))),
      ),
    );
  }
}
