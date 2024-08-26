import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  static const routeName = "second_page";


  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int number = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body:SingleChildScrollView(
            child: Column(children: [
              OutlinedButton(

                onPressed: () {
                  setState(() {
                    number = number +1;
                  });

                },
                child: Text("Add the ListTile"),
              ),
              ListView.builder(
                physics: const ScrollPhysics(parent: null),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: index.isEven ? Colors.green : Colors.orange,
                    child: const ListTile(
                      leading: Icon(Icons.data_exploration_rounded),
                      title: Text("My Title"),
                      subtitle: Text("Hello"),
                      trailing: Icon(Icons.access_alarms_sharp),
                    ),
                  );
                },
                itemCount: number,

              )
            ]
            )
        )


    );

  }
}


// class SecondPage extends StatelessWidget {
//   static const routeName = "second_page";
//   int number = 5;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Second Page"),
//         ),
//         body: Column(children: [
//           OutlinedButton(
//             onPressed: () {
//               number = number +1;
//             },
//             child: Text("Add the ListTile"),
//           ),
//           ListView.builder(
//             shrinkWrap: true,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 color: Colors.green,
//                 child: const ListTile(
//                   leading: Icon(Icons.data_exploration_rounded),
//                   title: Text("My Title"),
//                   subtitle: Text("Hello"),
//                   trailing: Icon(Icons.access_alarms_sharp),
//                 ),
//               );
//             },
//             itemCount: 4,
//
//           )
//         ]
//     ));
//   }
// }
