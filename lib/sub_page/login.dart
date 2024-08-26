
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    //TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer()..onTap = (){
    //   Navigator.of(context).pushNamed('register');
    // };
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 244,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('images/h2.png',width: MediaQuery.of(context).size.width, fit: BoxFit.fill,),

                        ],
                      ),
                    ),
                    Positioned(
                        top: 58,
                        left: 16,
                        child: GestureDetector(
                          onTap: ()=> Navigator.pop(context),
                          child: SvgPicture.asset(
                            'images/icon/ic_arrow_left.svg',
                            width: 24,
                            height: 24,
                            color: Colors.white,),
                        )
                    ),
                    Positioned(
                        right: 0,
                        left: 0,
                        top:96,
                        child: SvgPicture.asset(
                          'images/icon/ic_Oneship.svg',
                          width: 154,
                          height: 96,
                          )
                    ),
                  ],

                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                  child: SizedBox(
                    height: 28,
                    width: double.infinity,
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
                  child: TextField(
                    //controller: controller,
                    obscureText: false,
                    cursorColor: Colors.green,
                    //onChanged: (String value){print(controller);},
                    focusNode: FocusNode(),
                    style: const TextStyle(
                      color:Colors.deepPurple
                    ) ,
                    decoration: InputDecoration(
                      prefixIcon:  Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset('images/icon/ic_call.svg'),
                      ),
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.all(12),
                      //   child: SvgPicture.asset('images/icon/ic_call.svg'),
                      // ),
                      // enabledBorder: const OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.white),
                      // ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Color(0xffE8E8E8)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      //label: Text('Name'),
                      //labelStyle: TextStyle(),
                      hintText: 'Số điện thoại',
                      hintStyle: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: (){  Navigator.of(context).pushNamed('login');},
                  child: Container(
                    height: 44,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top:24, bottom: 24),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF419F7D),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Text('Đăng nhập',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16,))),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:   16,
                                color: Color(0xFF121212)
                              // height: 28
                            ),
                            children: [

                              TextSpan(text : 'Bạn chưa có tài khoản đăng ký? ', ),

                              TextSpan(
                                  recognizer: TapGestureRecognizer()..onTap = (){
                                    Navigator.of(context).pushNamed('register');
                                  },
                                  text: 'Tiếp tục ',
                                  style: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                     )
                              ),

                            ]
                        )),
                  ],
                ),

              ]
          ),
        ),
    );
  }
}
