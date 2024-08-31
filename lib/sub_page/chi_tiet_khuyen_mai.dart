import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hoc_flutter_co_ban/widgets/detail_info.dart';
class DetailSaleOff extends StatelessWidget {
  const DetailSaleOff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //header
          SizedBox(
            width: double.infinity,

            child:  Column(
              children: [
                Container(
                  color: Color(0xFF419F7D),
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        GestureDetector(
                            onTap:()=> Navigator.pop(context),
                            child: SvgPicture.asset('images/icon/ic_arrow_left.svg')
                        ),
                        const SizedBox(width: 70,),
                        const Text("Chi tiết khuyến mãi",style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500 ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  height: 50,
                  color: Colors.white,
                  child: const Column(
                      children: [
                        SizedBox(width: 10,),
                        Text('Khuyến mãi trên live ',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500)),
                        Text('00:00, 20/03/2024 - 00:00, 24/03/2024'),
                      ]

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          //body
          SizedBox(
            height: 600,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DetailInfo(label: 'Người tạo ', value: 'Nhà hàng'),
                      DetailInfo(label: 'Ngày tạo ', value: '20/03/2024'),
                      DetailInfo(label: 'Khuyến mãi áp duụng cho ', value: 'Món được chọn'),
                      DetailInfo(label: 'Loại khuyến mãi ', value: 'Giảm % giá món'),
                      DetailInfo(label: 'Số lượng áp dụng ', value: 'Áp dụng'),
                      DetailInfo(label: 'Áp dụng ', value: 'Từng món'),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  // info 1
                  const SizedBox(
                    height: 176,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text('Tổng doanh thu'),
                                Text('808.021đ', style: TextStyle(color: Colors.green),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Tổng giảm giá '),
                                Text('215.200đ',style: TextStyle(color: Colors.red)),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Divider(
                          indent: 16,
                          endIndent: 16,
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Quán tài trợ'),
                              Text('384.158đ ')
                            ],
                          ),

                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Quán tài trợ'),
                              Text('0 đ')
                            ],
                          ),

                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  // info 2
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: 112,
                      child: Column(
                        children: [
                          Text('Cài đặt khuyến mãi'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Tỉ lệ giảm giá'),
                              Text('20%'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Spacer(),
          //button
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.symmetric(vertical: BorderSide(color: Colors.grey,)),
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              color: Colors.grey.shade300,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 44,
                  width: 166,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Ngưng áp dụng', style: TextStyle(color: Colors.red),),

                    ],
                  ),
                ),
                Container(
                  height: 44,
                  width: 166,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Chỉnh sửa', style: TextStyle(color: Colors.white),),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
