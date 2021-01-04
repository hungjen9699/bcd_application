import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/screen/drawer/main_drawer.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'component/not_verify_screen.dart';
import 'component/verify_screen.dart';

class CrackScreen extends StatefulWidget {
  final UserDTO dto;

  const CrackScreen({Key key, this.dto}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return CrackScreenState();
  }
}

class CrackScreenState extends State<CrackScreen> {
  String todayDateIs = "12";
  int _currentIndex = 0;
  bool _switchValue = true;
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
    final tabs = [
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _switchValue == true
                  ? CrackNotVerifyList(true, widget.dto)
                  : CrackNotVerifyList(false, widget.dto),
            ],
          ),
        ),
      ),
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _switchValue == true
                  ? CrackVerifyList(widget.dto)
                  : CrackVerifyList(widget.dto),
            ],
          ),
        ),
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: DEFAULT_COLOR,
          title: Text(
            'Crack',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            CupertinoSwitch(
              trackColor: Colors.white,
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
                print(_switchValue);
              },
            ),
          ],
        ),
        drawer: MainDrawer(
          dto: widget.dto,
        ),
        body: SizedBox.expand(
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[tabs[_currentIndex]],
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
              icon: Icon(Icons.remove_circle_outline_rounded),
              title: Text(
                "Not Verify",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.verified),
              title: Text(
                "Verify",
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
