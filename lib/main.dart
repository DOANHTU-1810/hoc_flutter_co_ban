//import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoc_flutter_co_ban/pages/page_1.dart';
import 'package:hoc_flutter_co_ban/pages/page_2.dart';
import 'package:hoc_flutter_co_ban/pages/page_3.dart';
import 'package:hoc_flutter_co_ban/pages/page_4.dart';
import 'package:hoc_flutter_co_ban/pages/page_5.dart';
import 'package:hoc_flutter_co_ban/pages/page_6.dart';
import 'package:hoc_flutter_co_ban/sub_page/login.dart';
import 'package:hoc_flutter_co_ban/sub_page/my_info.dart';
import 'package:hoc_flutter_co_ban/sub_page/register.dart';
import 'package:hoc_flutter_co_ban/widgets/widget_container.dart';
import 'second_page.dart';
import 'third_page.dart';
import 'fourth_page.dart';
import 'fifth_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


     @override
  Widget build(BuildContext context) {

       return MaterialApp(
       home: const MyScaffoldApp(),

        routes:{
          SecondPage.routeName: (_)=> const SecondPage(),
          ThirdPage.routeName: (_)=> ThirdPage() ,
          PageFourth.routeName: (_)=> PageFourth(),
          FifthPage.routeName: (_)=> const FifthPage(),
          'Page1': (_)=> const Page1(),
          'Page2': (_)=> Page2(),
          'Page3': (_)=> const Page3(),
          'Page4': (_)=> const Page4(),
          'Page5': (_)=> const Page5(),
          'Page6': (_)=> const Page6(),
          'login': (_)=> Login(),
          'register': (_)=>const Register(),
          'myinfo': (_)=>const MyInfo(),
        }

       );
     }
     

}

class MyScaffoldApp extends StatefulWidget {
  const MyScaffoldApp({super.key});

  @override
  State<MyScaffoldApp> createState() => _MyScaffoldAppState();
}

class _MyScaffoldAppState extends State<MyScaffoldApp> {

  List<WidgetContainer> listContainer = [
     WidgetContainer(text: "Bai 1", color: Colors.grey, route: 'Page1',),
     WidgetContainer(text: "Bai 2", color: Colors.blue,route: 'Page2',),
     WidgetContainer(text: "Bai 3", color: Colors.yellow,route: 'Page3'),
     WidgetContainer(text: "Bai 4", color: Colors.green,route: 'Page4'),
     WidgetContainer(text: "Bai 5", color: Colors.red,route: 'Page5'),
     WidgetContainer(text: "Bai 6", color: Colors.purple,route: 'Page6'),

  ];
    void onTab (String data){
      Navigator.of(context).pushNamed(data);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: const Text("My New Flutter App"),
        ),
        body: ListView.builder(

            itemCount: listContainer.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap:()=>onTab(listContainer[index].route!),
                  child: WidgetContainer(text: listContainer[index].text, color: listContainer[index].color)
              );
            },
        ),

        bottomNavigationBar: BottomAppBar(
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Spacer(),
                IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      Navigator.of(context).pushNamed(SecondPage.routeName);
                    }),
                  //Spacer(),
                  IconButton(
                      icon: const Icon(Icons.add_box_sharp),
                      onPressed: () {
                        Navigator.of(context).pushNamed(ThirdPage.routeName);
                      }


                  ),
                //Spacer(),
                IconButton(
                    icon: const Icon(Icons.ac_unit_outlined),
                    onPressed: () {
                      Navigator.of(context).pushNamed(PageFourth.routeName);
                    }
                ),
                IconButton(
                    icon: const Icon(Icons.accessibility),
                    onPressed: () {
                      Navigator.of(context).pushNamed(FifthPage.routeName);
                    }
                ),

              ],
            ),

        )

    );
  }
}

