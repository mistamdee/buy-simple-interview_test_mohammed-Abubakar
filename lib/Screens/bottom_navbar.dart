import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interview_test/Screens/HomeScreen/home_screen.dart';
import 'package:interview_test/utills/images.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  List<Widget> _screens = [];
  
  @override
  void initState() {
    _screens = [
     HomeScreen(),
     HomeScreen(),
     HomeScreen(),
     HomeScreen()
  ];
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: 
            BottomNavigationBar(
               type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.black,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                _currentIndex = index;
                });
              },
              items:  [
                BottomNavigationBarItem(icon:Image.asset(Images.CARD), label: "", backgroundColor: Colors.black),
                BottomNavigationBarItem(icon:Image.asset(Images.BONFIRE), label: "", backgroundColor: Colors.black),
                BottomNavigationBarItem(icon:Image.asset(Images.CHAT), label: "", backgroundColor: Colors.black),
                BottomNavigationBarItem(icon:Image.asset(Images.USER), label: "", backgroundColor: Colors.black),
              ],
            ),
         
      
    );
  }
}


