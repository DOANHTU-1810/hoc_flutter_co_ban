import 'package:flutter/material.dart';

import 'my_text_field.dart';
class MyInfoRegis extends StatelessWidget {
  String? hintText;
  String label;
   MyInfoRegis({super.key, required this.label,this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),
                children: [
                  TextSpan(text: label),
                  const TextSpan(
                      text: '*',
                    style: TextStyle(
                      color: Colors.red,

                    )
                  )
                ]
            )
        ),
        Padding(
          padding:  const EdgeInsets.symmetric(vertical: 8.0),
          child: MyTextField(hintText: hintText,),
        ),
      ],
    );
  }
}
