import 'package:flutter/material.dart';
import 'package:hoc_flutter_co_ban/sub_page/khuyen_mai_info.dart';
import 'package:hoc_flutter_co_ban/widgets/khuyen_mai_info.dart';

import '../model/model_1.dart';
import '../model/model_1.dart';
import '../sub_page/product_rating.dart';

class Page2 extends StatefulWidget {
   Page2({super.key});
  static const routeName = "Page2";


  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  void addPeople(){
    String name = nameController.text;
    String age = ageController.text;
    People people = People(name: name, age: age);
    listPeople.add(people);
    nameController.clear();
    ageController.clear();
    print('add thanh cong');

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Page2.routeName),
        ),
        body:   Center(
            child: Column(
              children: [
                IconButton(
                    onPressed: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const KhuyenMaiInfo()),
                              );
                            },
                    icon: const Icon(Icons.add)
                ),
                TextField(
                  controller: nameController,

                ),
                TextField(
                  controller: ageController,

                ),
                ElevatedButton(
                    onPressed: ()=>addPeople(),
                    child: const Text('Add')),

                //product rating
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProductRating()),
                      );
                    },
                    child: const Text('Product Rating')),

                //khuyen mai
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KhuyenMaiPage()),
                      );
                    },
                    child: const Text('Khuyen mai'))
              ],
            )
        ),


    );
  }
}



