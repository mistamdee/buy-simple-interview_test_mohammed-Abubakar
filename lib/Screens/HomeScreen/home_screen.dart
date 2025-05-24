import 'package:flutter/material.dart';
import 'package:interview_test/Screens/HomeScreen/widgets/favorite_time_grid.dart';
import 'package:interview_test/Screens/HomeScreen/widgets/pick_option_widget.dart';
import 'package:interview_test/Screens/HomeScreen/widgets/profile_section.dart';
import 'package:interview_test/utills/app_color.dart';
import 'package:interview_test/utills/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 @override
Widget build(BuildContext context) {
  final screenSize = MediaQuery.of(context).size;
  return Scaffold(
    body:Container(
        width: double.maxFinite,
        decoration:  const BoxDecoration(
          image: DecorationImage(image: AssetImage(Images.BG), fit: BoxFit.cover)
        ),
        child:  Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              const SizedBox(height: 20,),

              const Text("Stroll Bonfire", style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                fontFamily: "Proxima Nova",
                color: AppColors.MAIN_COLOR
              ),),

              const SizedBox(height: 5,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.timelapse_outlined, color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("22h 00m", style: TextStyle(color: Colors.white),),
                  SizedBox(width: 10,),
                   Icon(Icons.person_2_outlined, color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("103", style: TextStyle(color: Colors.white),)
                ],
              ),

              const Spacer(),
              
              ProfileSection(),
              const SizedBox(height: 5,),
              FavoriteTimeGrid(screenHeight: screenSize.height,),
              const SizedBox(height: 15,),
              const PickOptionWidget()

              
              
              
            ],
          ),
        ),
      
    ),
  );
}
}