import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hoc_flutter_co_ban/sub_page/chi_tiet_khuyen_mai.dart';
import 'package:hoc_flutter_co_ban/widgets/my_text_field.dart';
class KhuyenMaiPage extends StatefulWidget {
  const KhuyenMaiPage({super.key});

  @override
  State<KhuyenMaiPage> createState() => _KhuyenMaiPageState();
}

class _KhuyenMaiPageState extends State<KhuyenMaiPage> {
  int? _value;
  TextEditingController nameController = TextEditingController();
  TextEditingController reduceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF419F7D),
            ),

            child:  Column(
              children: [
                SizedBox(
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
                        const Text("Khuyen mai gach gia",style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500 ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  color: const Color(0xFFFFF7E5),
                  child: Row(
                      children: [
                        SvgPicture.asset('images/icon/ic_notification.svg'),
                        const SizedBox(width: 10,),
                        const Text('Cài đặt khuyến mãi trên Live chỉ áp dụng \n trên Video Live truc tiếp ',style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))
                      ]

                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 600,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Column(
                  children: [
                    // ten khuyen mai
                    Column(
                      children: [
                        const Text('Tên Khuyến Mãi '),
                        const SizedBox(height: 10,),
                        MyTextField(controller: nameController,hintText: 'VD: Khuyến mãi Live',)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //gio bat dau
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              const Text('Giờ bắt đầu'),
                            const SizedBox(height: 8,),
                            Container(
                              height: 44,
                              width: 166,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Text('00:00'),
                                  SvgPicture.asset('images/icon/ic_clock.svg')
                                ],
                              ),
                            )
                          ],
                        ),
                        // ngày bắt đầu
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Ngày bắt đầu '),
                            const SizedBox(height: 8,),
                            Container(
                              height: 44,
                              width: 166,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Text('dd/mm/yyyy'),
                                  SvgPicture.asset('images/icon/ic_calendar.svg')
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //gio ket thuc
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Giờ kết thúc'),
                            const SizedBox(height: 8,),
                            Container(
                              height: 44,
                              width: 166,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Text('00:00'),
                                  SvgPicture.asset('images/icon/ic_clock.svg')
                                ],
                              ),
                            )
                          ],
                        ),
                        // ngày kết thúc
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Ngày kết thúc '),
                            const SizedBox(height: 8,),
                            Container(
                              height: 44,
                              width: 166,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Text('dd/mm/yyyy'),
                                  SvgPicture.asset('images/icon/ic_calendar.svg')
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    //loai khuyen mai
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Loại khuyên mãi '),
                        const SizedBox(height: 8,),
                        Container(
                          height: 44,
                          width: 343,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('Giảm % giá món'),
                              SvgPicture.asset('images/icon/ic_arrow_down.svg')
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    //so luong ap dung
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Số lượng áp dụng '),
                        const SizedBox(height: 8,),
                        Container(
                          height: 44,
                          width: 343,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('150'),
                              SvgPicture.asset('images/icon/ic_arrow_down.svg')
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Áp dụng toàn bộ menu '),
                        Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value;
                              });
                            }
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    //Cai dat khuyen mai
                    Text('Cài đặt khuyến mãi '),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        const Text('Tỷ lệ giảm giá % '),
                        const SizedBox(height: 10,),
                        MyTextField(controller: reduceController,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                      const Text('Hủy bỏ', style: TextStyle(color: Colors.red),),

                    ],
                  ),
                ),
                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailSaleOff(),)),
                  child: Container(
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
                        const Text('Gửi yêu cầu', style: TextStyle(color: Colors.white),),
                  
                      ],
                    ),
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
