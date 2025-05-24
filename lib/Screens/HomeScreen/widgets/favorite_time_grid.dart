import 'package:flutter/material.dart';
import 'package:interview_test/utills/app_color.dart';

class FavoriteTimeGrid extends StatefulWidget {
 double screenHeight;
 FavoriteTimeGrid({super.key, required this.screenHeight});

  @override
  State<FavoriteTimeGrid> createState() => _FavoriteTimeGridState();
}

class _FavoriteTimeGridState extends State<FavoriteTimeGrid> {
  List favTime = [
    "The peace in the early mornings",
    "The magical golden hours",
    "Wind-down time after dinners",
    "The serenity past midnight"
  ];

  int? _selectedFav;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: favTime.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      mainAxisExtent: widget.screenHeight * .08
      ), 
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _selectedFav=index;
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
            color: Color(0xff232A2E),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: _selectedFav==index? AppColors.MAIN_COLOR:Colors.transparent)
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color:  Color(0xffC4C4C4))
                  ),
                  padding: EdgeInsets.all(5),
                  child: Center(child: Text(index==0? "A": index ==1? "B": index==2? "C": "D", style: TextStyle(fontSize: 12,color: Color(0xffC4C4C4)),),),
                ),
                SizedBox(width: 10,),
                Expanded(child: Text(favTime[index], style: TextStyle(color:  Color(0xffC4C4C4), fontSize: 12),)),
              ],
            ),
          ),
        );
      },
      );
  }
}