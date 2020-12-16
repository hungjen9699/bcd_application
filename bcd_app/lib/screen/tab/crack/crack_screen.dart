import 'package:bcd_app/screen/drawer/main_drawer.dart';
import 'package:bcd_app/screen/tab/account/account_screen.dart';
import 'package:bcd_app/screen/tab/crack/calendardemo.dart';
import 'package:bcd_app/screen/tab/crack/crack_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:bcd_app/screen/tab/notification/notification_screen.dart';
import 'package:bcd_app/screen/tab/schedule/schedule__screen.dart';
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

  int _currentIndex = 0;
  PageController _pageController;

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
            SingleChildScrollView(child:Container(
              child: Column(
                children: [
                  CrackNotVerifyBox("xx"),
                  CrackNotVerifyBox("xx"),
                  CrackNotVerifyBox("xx"),


                ],
              ),
            ),),
            SingleChildScrollView(child:Container(
              child: Column(
                children: [
                  CrackVerifyBox(Colors.redAccent, "Repaired"),
                  CrackVerifyBox(Colors.yellow, "Scheduled"),
                  CrackVerifyBox(Colors.orangeAccent, "UnScheduled"),


                ],
              ),
            ),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              activeColor: BOTTOM_NAVI_ACTIVE_COLOR,
              inactiveColor: Colors.black54,
              title: Text('Not verify'),
              icon: Icon(Icons.calendar_today_rounded,size: 22)
          ),
          BottomNavyBarItem(
              activeColor: BOTTOM_NAVI_ACTIVE_COLOR,
              inactiveColor: Colors.black54,
              title: Text('Verify'),
              icon: Icon(Icons.account_circle,size: 22)
          ),
        ],
      ),
    );
  }
}
