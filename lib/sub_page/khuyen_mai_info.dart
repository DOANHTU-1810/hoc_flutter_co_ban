

import 'package:flutter/material.dart';

import '../model/model_1.dart';

class KhuyenMaiInfo extends StatefulWidget {
  const KhuyenMaiInfo({super.key});


  @override
  State<KhuyenMaiInfo> createState() => _KhuyenMaiInfoState();
}

class _KhuyenMaiInfoState extends State<KhuyenMaiInfo> {
  List<People> list = listPeople;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(list[index].name),
              subtitle: Text(list[index].age),
            );
          },)
      
    );
  }
}


