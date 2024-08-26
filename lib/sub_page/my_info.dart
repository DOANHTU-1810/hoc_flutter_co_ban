import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hoc_flutter_co_ban/widgets/my_text_info.dart';


class MyInfo extends StatefulWidget {
  const MyInfo({super.key, });


  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  TextEditingController textController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telegramController = TextEditingController();


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

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(
                              'images/icon/ic_arrow_left.svg')
                      ),
                      const SizedBox(width: 100,),
                      const Text("Hồ sơ của tôi", style: TextStyle(fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
               Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 180,
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                                color: Colors.green
                            ),
                            child: Image.asset('images/img_top_info.png', fit: BoxFit.cover,),
                          ),
                        ),
                        SizedBox(
                              width: double.infinity,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 70,),
                                      MyTextInfo(label: 'Tên ', textController: textController),
                                      MyTextInfo(label: 'Giới tính ', textController: genderController),
                                      MyTextInfo(label: 'Ngày sinh ', textController: birthController),
                                      MyTextInfo(label: 'Số điện thoại ', textController: phoneController),
                                      MyTextInfo(label: 'Email ', textController: emailController),
                                      MyTextInfo(label: 'Telegram ', textController: telegramController),
                                    ],
                                  ),
                                ),
                              ),
                            ),


                      ],
                    ),

                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         SizedBox(height: 130, width: 500,),

                         Stack(
                           alignment: Alignment.center,
                           children:[

                             SizedBox(
                               height: 110,
                               width: 110,
                               child: DecoratedBox(
                                 decoration: const BoxDecoration(
                                   color: Colors.white,
                                   shape: BoxShape.circle,

                                 ),
                                 child: SvgPicture.asset('images/icon/ic_avatar.svg',),
                               ),
                             ),
                             // Positioned(
                             //     top:0 ,
                             //     left: 0,
                             //     right: 0,
                             //     bottom: 0,
                             //     child: Image.asset('images/img_circle.png',)
                             // ),
                             Positioned (
                               bottom:0,
                                 right: 0,
                                 child: SvgPicture.asset('images/icon/ic_circle_edit.svg', height: 30, width: 30,)
                             ),


                           ]
                         ),
                       ],
                     ),
                  ]

              ),

            ]

        ),
      ),

    );
  }
}