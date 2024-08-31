import 'package:flutter/material.dart';
    class DetailInfo extends StatelessWidget {
      String label;
      String value;
      DetailInfo({super.key, required this.label, required this.value});

      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(label),
                  Text(value)
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.grey,
              )
            ],
          ),
        );
      }
    }
