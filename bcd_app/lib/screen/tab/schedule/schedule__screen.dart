import 'package:bcd_app/screen/drawer/main_drawer.dart';
import 'package:bcd_app/screen/navigation_screen.dart';
import 'package:bcd_app/screen/tab/crack/calendardemo.dart';
import 'package:bcd_app/screen/tab/schedule/cart_screen.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'component/history_box.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen();
  @override
  State<StatefulWidget> createState() {
    return ScheduleScreenState();
  }
}

class ScheduleScreenState extends State<ScheduleScreen> {
  int _currentIndex = 0;
  PageController _pageController;
  double _animatedWidth = 0;

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
        appBar: AppBar(
          backgroundColor: DEFAULT_COLOR,
          title: Text(
            'Schedule',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            _currentIndex==0?IconButton(
                icon: Icon(Icons.library_add),
                onPressed: () {
                  setState(() {
                    if (_animatedWidth == 30) {
                      _animatedWidth = 0;
                    } else
                      _animatedWidth = 30;
                  });
                }):Text("")
          ],
        ),
        drawer: MainDrawer(),
        body: SizedBox.expand(
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              _currentIndex == 0
                  ? SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            CartScreenTab(
                                Colors.yellow, "Fixed", _animatedWidth, false),
                            CartScreenTab(Colors.redAccent, "Removed",
                                _animatedWidth, false),
                            Container(
                              margin: EdgeInsets.only(top: 200),
                              child: IconButton(
                                icon: Icon(Icons.add_circle,
                                    size: 50, color: Colors.green),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationScreen()),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : _currentIndex == 1
                      ? CalendarDemo()
                      : SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: [
                                HistoryBox(Colors.yellow, "Fixed"),
                                HistoryBox(Colors.redAccent, "Removed"),
                              ],
                            ),
                          ),
                        ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: DEFAULT_COLOR,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          selectedFontSize: 14,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm_off_rounded),
              title: Text(
                "UnScheduled",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.calendar_today_rounded),
              title: Text(
                "Scheduled",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.history),
              title: Text(
                "History",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ));
  }
}
