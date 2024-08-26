import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  static const routeName = "Page1";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: SizedBox(
                    height: 32,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('images/logo1.png'),
                        SizedBox(
                          width: 120,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset('images/icon/ic_VN.svg'),
                              Text("Viet Nam"),
                              SvgPicture.asset('images/icon/ic_arrow_down.svg'),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 44.0),
                  child: SizedBox(
                    height: 288,
                    width: 288,
                    child: Image.asset('images/h1.png'),
                  ),
                ),
                const Text('Đối tác của OneShip ', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:   20,
                                color: Color(0xFF121212)
                               // height: 28
                            ),
                            children: [

                              TextSpan(text : 'Mang lại niểm vui cho \n '),
                              TextSpan(text: 'hàng triệu ', style: TextStyle(color: Color(0xFF419F7D))),
                            ]
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:   20,
                                color: Color(0xFF121212)
                              // height: 28
                            ),
                            children: [
                              TextSpan(text : 'người dùng '),
                              TextSpan(text: 'OneShip',style: TextStyle(color: Color(0xFF419F7D),fontWeight: FontWeight.w600,fontSize: 20,))
                            ]
                        )),
                  ],
                ),

                GestureDetector(
                  onTap: (){  Navigator.of(context).pushNamed('login');},
                  child: Container(
                    //height: 44,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top:40, bottom: 48),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF419F7D),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Text('Đăng nhập',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16,))),
                  ),
                ),
                const Text('Bạn chưa phải là tài xế OneShip?'),
                const SizedBox(height: 10,),
                const Text('Đăng ký ngay',style: TextStyle(color: Color(0xFF419F7D),fontWeight: FontWeight.w400,fontSize: 16,) ),
                const SizedBox(height: 58,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:   12,
                                color: Color(0xFF121212)
                              // height: 28
                            ),
                            children: [

                              TextSpan(text : 'Khi đăng nhập bạn đồng ý tuan thủ '),
                              TextSpan(text: 'điều khoản và điều kiện ', style: TextStyle(color: Color(0xFF186ADE), fontSize: 12)),
                              TextSpan(text : '& '),
                            ]
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:   12,
                                color: Color(0xFF121212)
                              // height: 28
                            ),
                            children: [
                              TextSpan(text : 'Chính sách bảo mật ',style: TextStyle(color: Color(0xFF186ADE), fontSize: 12)),
                              TextSpan(text: 'dành cho tài xế',)
                            ]
                        )),
                  ],
                ),
              ]
          )

              ),
        ),
      );


  }
}


