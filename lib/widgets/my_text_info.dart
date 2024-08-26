import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class MyTextInfo extends StatefulWidget {
  String label;
  TextEditingController textController = TextEditingController();
   MyTextInfo({super.key, required this.label, required this.textController});

  @override
  State<MyTextInfo> createState() => _MyTextInfoState();
}

class _MyTextInfoState extends State<MyTextInfo> {
  bool onOff = true;



  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.label),
            Row(
              children: [
                onOff?
                Text(widget.textController.text)
                    :SizedBox(
                  width:200,
                  height: 40,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.start,
                    onTap:()=> widget.textController.clear(),
                    controller: widget.textController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              width: 20,
                              color: Colors.white.withOpacity(0.9)
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            width: 20,
                            color: Colors.black
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),



                    ),
                  ),
                ),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    onOff = !onOff;

                    setState(() {});

                  },
                  child: onOff ? SvgPicture.asset('images/icon/ic_edit.svg', width: 30,height: 30,) :SvgPicture.asset('images/icon/ic_close.svg', width: 30,height: 30,),
                )

              ],
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(
            height: 2,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
