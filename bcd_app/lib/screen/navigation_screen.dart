import 'package:bcd_app/screen/tab/account/account_screen.dart';
import 'package:bcd_app/screen/tab/crack/calendardemo.dart';
import 'package:bcd_app/screen/tab/crack/component/box_input_not_verify.dart';
import 'package:bcd_app/screen/tab/crack/component/crack_not_verify_box.dart';
import 'package:bcd_app/screen/tab/crack/crack_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:bcd_app/screen/tab/notification/notification_screen.dart';
import 'package:bcd_app/screen/tab/schedule/schedule__screen.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer/main_drawer.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen(
      );
  @override
  State<StatefulWidget> createState() {
    return _NavigationScreenState();
  }
}
class _NavigationScreenState extends State<NavigationScreen> {
  double _animatedHeight = 0.0;
  double _animatedBigHeight = 500;

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
      appBar: AppBar(backgroundColor:DEFAULT_COLOR,title: Text("Crack Details",style: TextStyle(color: Colors.white),)),
     drawer: MainDrawer(),
      body:SingleChildScrollView(child: new Card(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new GestureDetector(
              child:  AnimatedContainer(width: MediaQuery.of(context).size.width,height: _animatedBigHeight,
                  duration: const Duration(milliseconds: 120),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 10), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    //     gradient: LinearGradient(
                    //       begin: Alignment.topLeft,
                    //       end: Alignment.bottomRight,
                    //         colors: [HexColor("#ffffff"),Color.fromRGBO(37, 49, 61, 1)]
                    // )
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Container(
                      width: double.infinity,height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        color: Colors.green,

                      ),
                      child: Column(children: [Container(margin:EdgeInsets.only(top: 15),child: Text("Scheduled Cracks",style: TextStyle(fontSize: 25,fontFamily: "Montserrat",color: Colors.white),),)],),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                              width: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(margin:EdgeInsets.only(bottom: 10),child: Row(children: [ Icon(Icons.qr_code, size: 20,color: Colors.blue,),Text(" VRN_001",style: TextStyle(fontSize: 16),)],),),
                                  Container(margin:EdgeInsets.only(bottom: 10),child: Row(children: [ Icon(Icons.location_pin,size: 20,color: Colors.green,),Text(" 3m from checkpoint 1",style: TextStyle(fontSize: 16))],),),
                                  Container(margin:EdgeInsets.only(bottom: 10),child: Row(children: [ Icon(Icons.timer, size: 20,color: Colors.deepOrange,),Text(" 12/12/2020 11:00",style: TextStyle(fontSize: 16))],),),
                                  TextFormField(
                                    controller: TextEditingController(text: "12/01/2021"),style: TextStyle(color: Colors.black54),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        labelText: 'Repair time',
                                        //prefixIcon: Icon(Icons.email),
                                        icon: Icon(Icons.av_timer_rounded)),
                                  ),
                                  TextFormField(
                                    controller: TextEditingController(text: "High"),style: TextStyle(color: Colors.black54),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        labelText: 'Severity',
                                        //prefixIcon: Icon(Icons.email),
                                        icon: Icon(Icons.av_timer_rounded)),
                                  ),      TextFormField(
                                    controller: TextEditingController(text: "...."),style: TextStyle(color: Colors.black54),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        labelText: 'Position Description',
                                        //prefixIcon: Icon(Icons.email),
                                        icon: Icon(Icons.av_timer_rounded)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:EdgeInsets.symmetric(horizontal: 10),
                                          child:   FlatButton(
                                            color: Colors.green,
                                            textColor: Colors.white,
                                            disabledColor: Colors.grey,
                                            disabledTextColor: Colors.black,
                                            padding: EdgeInsets.all(8.0),
                                            splashColor: Colors.blueAccent,
                                            onPressed: () {
                                              _animatedHeight=100.0;
                                            },
                                            child: Text(
                                              "Update Cracks",
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                          ),),      Container(
                                          margin:EdgeInsets.symmetric(horizontal: 10),
                                          child:   FlatButton(
                                            color: Colors.blueGrey,
                                            textColor: Colors.white,
                                            disabledColor: Colors.grey,
                                            disabledTextColor: Colors.black,
                                            padding: EdgeInsets.all(8.0),
                                            splashColor: Colors.blueAccent,
                                            onPressed: () {
                                              setState(() {
                                                _animatedHeight!=0.0?_animatedHeight=0.0:_animatedHeight=300.0;
                                                _animatedHeight!=0.0?_animatedBigHeight=800.0:_animatedBigHeight=500.0;
                                              });
                                            },
                                            child: Text(
                                              "View Schedule",
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                          ),),


                                      ],),
                                  ),
                                ],)
                          ),
                        Opacity(
                          opacity: 0.501960813999176,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffb7b7b7),
                                    width: 0.5,
                                  ))),
                        ),
                          new AnimatedContainer(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(241, 241, 241, 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(1, 10), // changes position of shadow
                                ),
                              ],
                              //     gradient: LinearGradient(
                              //       begin: Alignment.topLeft,
                              //       end: Alignment.bottomRight,
                              //         colors: [HexColor("#ffffff"),Color.fromRGBO(37, 49, 61, 1)]
                              // )
                            ),
                            duration: const Duration(milliseconds: 120),
                            child: SingleChildScrollView(child:
                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child:
                                Column(children: [
                                  TextFormField(
                                    controller: TextEditingController(text: "FPT Repairer"),style: TextStyle(color: Colors.black54),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        labelText: 'Repairer',
                                        hintText: "FPT Repair",
                                        //prefixIcon: Icon(Icons.email),
                                        icon: Icon(Icons.perm_identity)),
                                  ),
                                  TextFormField(
                                    controller: TextEditingController(text: "12/01/2021"),style: TextStyle(color: Colors.black54),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        labelText: 'Repair time',
                                        //prefixIcon: Icon(Icons.email),
                                        icon: Icon(Icons.av_timer_rounded)),
                                  ),
                                  TextFormField(
                                    controller: TextEditingController(text: "Repair by FPT repairer..."),style: TextStyle(color: Colors.black54),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        labelText: 'Repair description',
                                        //prefixIcon: Icon(Icons.email),
                                        icon: Icon(Icons.av_timer_rounded)),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 200,
                                          margin:EdgeInsets.symmetric(horizontal: 20),
                                          child:   FlatButton(
                                            color: Colors.green
                                            ,
                                            textColor: Colors.white,
                                            disabledColor: Colors.grey,
                                            disabledTextColor: Colors.black,
                                            padding: EdgeInsets.all(8.0),
                                            splashColor: Colors.blueAccent,
                                            onPressed: () {
                                              _animatedHeight=100.0;
                                            },
                                            child: Text(
                                              "Update Schedule",
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                          ),),


                                      ],),
                                  ),


                                ],)
                            ),),
                            height: _animatedHeight,
                            width: double.infinity,

                          )
                        ],
                      ),
                    ),
                  ],)),),

          ],
        ) ,
      ),)



    );
  }
}
