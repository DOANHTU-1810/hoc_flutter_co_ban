import 'package:flutter/material.dart';

class PageFourth extends StatefulWidget {
  static const routeName = "page_fourth";


  @override
  State<PageFourth> createState() => _PageFourthState();
}

class _PageFourthState extends State<PageFourth> {
  TextEditingController _controller = TextEditingController();
  String userInput = "Nothing";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Page Fourth"),
      ),
      body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
              color: Colors.lightGreen,
                  child: Center(
                    child: Text(
                      userInput,
                      style: TextStyle(color:Colors.pinkAccent,fontSize: 35),
                    ),
                  ),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
              color: Colors.lightBlue,
                  child: MaterialButton(
                    onPressed: (){
                      setState(() {
                          userInput = _controller.text;
                      });
                    },
                    child: Text("Display Value",
                      style: TextStyle(color: Colors.white,fontSize: 35)),
                  ),
            )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.limeAccent,
                  child: TextFormField(controller: _controller ,),
            )),
          ],
      )
    );
  }
}
