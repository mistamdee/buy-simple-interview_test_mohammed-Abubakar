import 'package:flutter/material.dart';
import 'package:interview_test/utills/app_color.dart';
import 'package:interview_test/utills/images.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
       Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(Images.PHOTO,),
          backgroundColor: Colors.black,
        ),
        SizedBox(width: 30,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Angelina, 28", style: TextStyle(fontSize: 11, color: Colors.white),),
            SizedBox(height: 5,),
            Text("What is your favorite time of the day?", style: TextStyle(fontSize: 20, color: Colors.white),)
          ],
        ))      
        ],
       ),

       SizedBox(height: 10,),

       Text(
        "Mine is definitely the peace in the morning.",
        style: TextStyle(
        fontSize: 11,
        fontStyle: FontStyle.italic,
        color: AppColors.MAIN_COLOR
        ),
       )

      ],
    );
  }
}