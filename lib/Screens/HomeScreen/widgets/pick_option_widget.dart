import 'package:flutter/material.dart';
import 'package:interview_test/utills/images.dart';

class PickOptionWidget extends StatelessWidget {
  const PickOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: Text("Pick your option.\nSee who has a similar mind.",
        style: TextStyle(color: Color(0xffE5E5E5), fontSize: 13),
        )),
        SizedBox(width: 20,),

        Image.asset(Images.SPEAKER),
        SizedBox(width: 5,),
        Image.asset(Images.ARROW)

      ],
    );
  }
}