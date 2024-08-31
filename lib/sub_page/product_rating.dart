import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ProductRating extends StatelessWidget {
  const ProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset('images/img_bcg_coffee.png', width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
                const Positioned(
                  top: 52,
                  left: 16,
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          )
                        )
                    ),


                ),
             Positioned(
                top: 52,
                left: 16,
                child: SizedBox(
                    width: 32,
                    height: 32,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('images/icon/ic_arrow_left.svg', color: Colors.black,)
                    )
                  ),
                ),

              ]

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Row(
                    children: [
                      Image.asset('images/rating_star.png'),

                    ],

                  ),
                SizedBox(height: 8,),
                Text('Tra Sua Tran Chau Duong Den', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 8,),
                Text('Ech ham theo cong thuc chuan Singapore', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                SizedBox(height: 8,),
                Text('Da ban 405 | 308 luot thich', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 450,
              child: SingleChildScrollView(
                child:
                  Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(

                                children: [
                                  SvgPicture.asset('images/icon/avatar_1.svg', height: 36, width: 36,),

                                  Column(
                                    children: [
                                      Text('Nguyen Thi Kieu Linh',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
                                      Text('#220324-123456789',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),

                                    ],
                                  ),

                                ]
                            ),
                            Column(
                              children: [
                                SvgPicture.asset('images/icon/rating_star_1.svg',),
                                Text('21/03/2024')
                              ],
                            ),
                          ],
                        ),



                        SizedBox(height: 12,),
                        Text('Chao Ngon hop khau vi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                        SizedBox(height: 12,),
                        Image.asset('images/img_product.png'),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('images/icon/ic_receipt.svg'),
                                Text('Xem don hang',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue), )
                              ],
                            ),
                            SizedBox(width: 50,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('images/icon/ic_message.svg'),
                                Text('Tra loi',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.green), )
                              ],
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(

                                children: [
                                  SvgPicture.asset('images/icon/avatar_1.svg', height: 36, width: 36,),

                                  Column(
                                    children: [
                                      Text('Nguyen Thi Kieu Linh',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
                                      Text('#220324-123456789',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),

                                    ],
                                  ),

                                ]
                            ),
                            Column(
                              children: [
                                SvgPicture.asset('images/icon/rating_star_1.svg',),
                                Text('21/03/2024')
                              ],
                            ),
                          ],
                        ),



                        SizedBox(height: 12,),
                        Text('Chao Ngon hop khau vi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                        SizedBox(height: 12,),
                        Image.asset('images/img_product.png'),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('images/icon/ic_receipt.svg'),
                                Text('Xem don hang',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue), )
                              ],
                            ),
                            SizedBox(width: 50,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('images/icon/ic_message.svg'),
                                Text('Tra loi',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.green), )
                              ],
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),

                      ],
                    ),
                  ],
                                ),

              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
