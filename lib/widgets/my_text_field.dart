import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTextField extends StatelessWidget {
  String? iconPath;
  String? hintText;
  String? suffixIcon;
  bool? enable;
  TextEditingController? controller;
  void Function()? onTap;

  MyTextField({super.key, this.hintText, this.iconPath='', this.suffixIcon='', this.enable=false, this.onTap, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,

      readOnly: enable!,
      obscureText: false,
      cursorColor: Colors.green,
      //onChanged: (String value){print(controller);},
      focusNode: FocusNode(),
      style: const TextStyle(
          color:Colors.deepPurple
      ) ,
      decoration: InputDecoration(

        prefixIcon:
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(iconPath!),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(suffixIcon!,),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.green),
        ),
        
        fillColor: Colors.white,
        filled: true,
        //label: Text('Name'),
        //labelStyle: TextStyle(),
        hintText: hintText,
        hintStyle:  TextStyle(
          color: Colors.green.withOpacity(0.3),

        ),
      ),
    );
  }
}
