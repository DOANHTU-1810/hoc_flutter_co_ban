import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShowBottomSheet extends StatefulWidget {
  String label;
  TextEditingController textController = TextEditingController();
   ShowBottomSheet({super.key, required this.label, required this.textController});

  @override
  State<ShowBottomSheet> createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {

  void onTap(){

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text('Hello Anh Tu')
              ],
            ),
          );
        }
        );
     }



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
                Text(widget.textController.text),

                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: onTap,
                  child: SvgPicture.asset('images/icon/ic_edit.svg', width: 30,height: 30,)
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
