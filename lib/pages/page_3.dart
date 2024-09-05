import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});
  static const routeName = "Page3";

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController numberController = TextEditingController();

  List<String> nums = [
    'CE', 'Del', '%', '+',
    '9', '8' , '7', '-',
    '6', '5', '4', '*',
    '3', '2', '1','/',
    '0', '.', '='
  ];

  String number1 = '';
  String number2 = '';
  String operand = '';
  String result= '0';

  void onBtnTap(String value){
    if(value == 'Del'){
      delete();
      return;
    }

    if(value == 'CE'){
      clearAll();
      return;
    }

    if(value == '%'){
      convertToPercentage();
      return;
    }

    if(value == '='){
      calculate();
      return;
    }
    appendValue(value);

  }

  void calculate(){
    if(number1.isEmpty) return;
    if(number2.isEmpty) return;
    if(operand.isEmpty) return;

    double num1 = double.parse(number1);
    double num2 = double.parse(number2);

    var res = 0.0;
    switch(operand){
      case '+': res = num1 + num2;
      break;
      case '-': res = num1 - num2;
      break;
      case '*': res = num1 * num2;
      break;
      case '/': res = num1 / num2;
      break;
      default:
    }
    setState(() {
      result = '$res';
      if(result.endsWith('.0')){
        result = result.substring(0,result.length-2);
      }

    });
  }

  void convertToPercentage(){
    if(number1.isNotEmpty && operand.isNotEmpty && number2.isNotEmpty){
      //tinh toan truoc khi chuyen doi
      calculate();
    }
    if(operand.isNotEmpty){
      //khong doi thanh %
      return;
    }

    final number = double.parse(number1);
    setState(() {
      number1 = '${(number / 100)}';
      operand = '';
      number2 = '';
    });
  }

  void clearAll(){
    setState(() {
      number1 = '';
      operand = '';
      number2 = '';
      result = '';
    });
  }

  void delete(){
    if(number2.isNotEmpty){
      number2 = number2.substring(0, number2.length-1);
    }else if(operand.isNotEmpty){
      operand = '';
    }else if(number1.isNotEmpty){
      number1 = number1.substring(0, number1.length-1);
    }
    setState(() {

    });
  }

  void appendValue(String value){
    //number 1
    if(value != '.' && int.tryParse(value) == null){
      if(operand.isNotEmpty && number2.isNotEmpty){
        // Dung de tinh truoc khi thuc hienphep tinh khac
        calculate();
        number1 = result;
        operand = '';
        number2 = '';
      }
      //     // neu value khong phai la '.' va co gia tri la '+ - * /' thi gan value cho operand
      operand = value;
    }else if(number1.isEmpty||operand.isEmpty){
      if(value == '.' && number1.contains('.')) return;
      if(value == '.' && (number1.isEmpty || number1 == '.')) {
        value = '0.';
      }

      number1 += value;
    }else if(number2.isEmpty||operand.isNotEmpty) {
      if (value == '.' && number2.contains('.')) return;
      if (value == '.' && (number2.isEmpty || number2 == '.')) {
        value = '0.';
      }

      number2 += value;
    }
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Page3.routeName),
        ),
        body:   Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '$number1$operand$number2'.isEmpty
                                ? '0'
                                : '$number1$operand$number2',
                            style: const TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              result,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Expanded(
                flex: 6,
                child: Container(
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: nums.length,
                      itemBuilder: (context, index) {
                        return   GestureDetector(
                            onTap: ()=> onBtnTap(nums[index]),
                            child: widget_number(
                              color: nums[index].contains('CE')
                                  ? Colors.red
                                  : nums[index].contains('Del')
                                    ? Colors.yellow
                                    : ['1','2','3','4','5','6','7','8','9','0'].contains(nums[index])
                                      ? Colors.blue
                                      : ['+','-','*','/','%'].contains(nums[index])
                                        ? Colors.green
                                        : Colors.lightBlueAccent
                                  ,
                              textColor: Colors.white,
                              num: nums[index],
                            ),
                        );
                      },
                  ),
                ),
              ),
        
            ],
          ),
        )

    );
  }
}

class widget_number extends StatelessWidget {
   widget_number({
    super.key,
     required this.num,
     required this.color,
     required this.textColor
  });
  String num;
  Color color;
   Color textColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          color: color,
        child:  Center(
            child: Text(
              num,
              style:  TextStyle(
                fontSize: 25,
                  fontWeight: FontWeight.bold,
                color: textColor,
            ),
        )
        ),
      ),
    );
  }
}




