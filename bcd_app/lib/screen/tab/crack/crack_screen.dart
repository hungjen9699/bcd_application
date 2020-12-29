import 'package:bcd_app/screen/drawer/main_drawer.dart';
import 'package:bcd_app/screen/tab/account/account_screen.dart';
import 'package:bcd_app/screen/tab/crack/calendardemo.dart';
import 'package:bcd_app/screen/tab/crack/crack_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:bcd_app/screen/tab/notification/notification_screen.dart';

import 'package:bcd_app/screen/tab/crack/component/date_tile.dart';

import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'component/crack_not_verify_box.dart';
import 'component/crack_verify_box.dart';



class CrackScreen extends StatefulWidget {
  CrackScreen(
      );
  @override
  State<StatefulWidget> createState() {
    return CrackScreenState();
  }
}
class CrackScreenState extends State<CrackScreen> {
  String todayDateIs = "12";
  int _currentIndex = 1;
  PageController _pageController;
  @override

  final tabs =[
    SingleChildScrollView(child:

    Container(
      child: Column(
        children: [
            ListDates(),
          // CrackNotVerifyBox("xx"),
          // CrackNotVerifyBox("xx"),
          // CrackNotVerifyBox("xx"),
        ],
      ),
    ),),
    SingleChildScrollView(child:Container(
      child: Column(
        children: [
          CrackVerifyBox(Colors.yellow, "Scheduled"),
          CrackVerifyBox(Colors.redAccent, "Scheduled"),
          CrackVerifyBox(Colors.orangeAccent, "UnScheduled"),

        ],
      ),
    ),),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:DEFAULT_COLOR,title: Text('Crack',style: TextStyle(color: Colors.white),)),
      drawer: MainDrawer(),

      body: SizedBox.expand(
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },

          children: <Widget>[
            tabs[_currentIndex]
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: DEFAULT_COLOR,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value){
          setState(() {
            _currentIndex=value;
          });
        },
        selectedFontSize: 14,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.remove_circle_outline_rounded),title: Text(
            "Not Verify",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                ),
          ),),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.verified),title: Text(
            "Verify",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
               ),
          ),)
        ],
      )
    );
  }
}


