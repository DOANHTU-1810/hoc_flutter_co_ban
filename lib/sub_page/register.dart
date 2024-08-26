import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hoc_flutter_co_ban/widgets/my_button.dart';
import 'package:hoc_flutter_co_ban/widgets/my_info_register.dart';
import 'package:hoc_flutter_co_ban/widgets/my_text_field.dart';
 class Register extends StatefulWidget {
   const Register({super.key, });


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
   int _value = 0;

  void GoTo(){
    Navigator.of(context).pushNamed('myinfo');
  }

  void showPopUp(){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(

        content:  SizedBox(
          height: 600,
          width: 500,
          child: Column(
            children: [
              const Text('Nhân viên OneShip'),
              MyInfoRegis(label: 'Họ Tên',hintText: 'Nhập thông tin',),
              MyInfoRegis(label: 'Số điện thoại ',hintText: '090',),
              MyInfoRegis(label: 'Telegram',hintText: '090',),
              MyInfoRegis(label: 'Email',hintText: 'abc@gmail.com',),
              MyInfoRegis(label: 'Bộ phận làm việc ',hintText: '',),
              MyInfoRegis(label: 'Mã Nhân Viên',hintText: 'ID:',),
            ],
          ),
        ),
        actions: [
          //save button
          MyButton(label: 'Gửi', onTap: (){Navigator.of(context).pushNamed('myinfo');},)
        ],
      ),
    );
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SingleChildScrollView(
         child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,

             children: [
               Container(
                 height: 96,
                 width: double.infinity,
                 decoration: const BoxDecoration(
                   color: Color(0xFF419F7D),
                 ),

                 child:  Padding(
                   padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [

                       GestureDetector(
                           onTap:()=> Navigator.pop(context),
                           child: SvgPicture.asset('images/icon/ic_arrow_left.svg')
                       ),
                       const SizedBox(width: 120,),
                       const Text("Đăng ký",style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500 ),)
                     ],
                   ),
                 ),
               ),
                Padding(
                 padding: EdgeInsets.only(top: 20.0, left:16 , right: 16,   ),
                 child: Column(
                   children: [
                     MyInfoRegis(label: 'Họ',hintText: 'Nhập thông tin',),
                     MyInfoRegis(label: 'Tên',hintText: 'Nhập thông tin',),
                     MyInfoRegis(label: 'Số điện thoại ',hintText: '090',),
                     MyInfoRegis(label: 'Telegram',hintText: '090',),
                     MyInfoRegis(label: 'Email',hintText: 'abc@gmail.com',),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         RichText(
                             text: const TextSpan(
                                 style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400,
                                     color: Colors.black
                                 ),
                                 children: [
                                   TextSpan(
                                     text: 'Bạn làm',
                                     style: TextStyle(
                                       color: Colors.green
                                     )
                                   ),
                                   TextSpan(
                                       text: '*',
                                       style: TextStyle(
                                         color: Colors.red,

                                       )
                                   )
                                 ]
                             )
                         ),
                       ],
                     ),
                     Row(
                       children: [
                         const Text('Part Time'),
                         Radio(
                             value: 1,
                             groupValue: _value,
                             onChanged: (value){
                               setState(() {
                                 _value = value!;
                               });
                             }
                         ),
                          const SizedBox(width: 28,),
                         const Text('Full Time'),
                         Radio(
                             value: 2,
                             groupValue: _value,
                             onChanged: (value){
                               setState(() {
                                 _value = value!;
                               });
                             }
                         ),

                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Text(
                             'Nguồn giới thiệu ',
                           style: TextStyle(color: Colors.green),
                         ),
                         MyTextField(hintText: 'Chọn nguồn',suffixIcon: 'images/icon/ic_arrow_down.svg',enable: true,onTap: showPopUp,),
                       ],
                     ),

                     MyButton(
                       label: 'Tiếp tục',
                       onTap: GoTo,

                     )
                   ],
                 ),
               ),






             ]
         ),
       ),
     );
   }

}

