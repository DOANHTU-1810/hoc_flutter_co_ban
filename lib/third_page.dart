import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  static const routeName = "third_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Column(
        children: [
          Expanded(

              child: Container(

            color: Colors.red,
          )),
          Container(
            height: 200,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.grey,
                    )),
                Expanded(
                    child: Container(
                      color: Colors.amber,
                    )),
                Expanded(
                    child: Container(
                      color: Colors.lightGreen,
                    )),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.orange,
          )),
          Expanded(
              child: Container(
            color: Colors.yellow,
          ))
        ],
      ),
    );
  }
}
