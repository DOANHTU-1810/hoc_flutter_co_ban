import 'package:flutter/material.dart';
import 'package:hoc_flutter_co_ban/modal.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});
  static const routeName = "fifth_page";
  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
 final List _photo = [
    Data(
        image: "images/hinh1.jpg",
        text: "Nature Screen"
    ),
    Data(
        image: "images/hinh2.jpg",
        text: "Nature Screen"
    ),
    Data(
        image: "images/hinh3.jpg",
        text: "Nature Screen"
    ),
    Data(
        image: "images/hinh4.jpg",
        text: "Nature Screen"
    ),
    Data(
        image: "images/hinh5.jpg",
        text: "Nature Screen"
    ),
    Data(
        image: "images/hinh6.jpg",
        text: "Nature Screen"
    ),
    Data(
        image: "images/hinh7.jpg",
        text: "Nature Screen"
    ),
    Data(
        image: "images/hinh8.png",
        text: "Nature Screen"
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Grid View Basic"),
          centerTitle: true,
        ),
      body: GridView.builder(
          itemCount: _photo.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5

          ),
          //padding: EdgeInsets.all(2),
        scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
              return Column(

                children: [
                  Container(

                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(_photo[index].image),
                          fit:BoxFit.cover ,
                        ),

                    ),
                  ),

                   Text(_photo[index].text),
                ],
              );
          },
      ),


     /* GridView.count(
        crossAxisCount: 2,
       // padding: EdgeInsets.all(10),
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),*/

    );
  }
}
