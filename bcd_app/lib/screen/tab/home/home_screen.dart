
import 'package:bcd_app/screen/drawer/main_drawer.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';



class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}
class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:DEFAULT_COLOR,title: Text("Account",style: TextStyle(color: Colors.white),)),
        drawer: MainDrawer(),

        body:Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 140,
                    color: DEFAULT_COLOR_3,
                  )
                ],
              ),
            ),

            // Total Doc
            Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Good morning, ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Tran Hoang Dung",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                    Container(
                      width: 260,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Colors.white,
                      ),
                      child: Column(

                        children: <Widget>[
                          Container(

                            height: 40,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Total cracks",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 107),
                                  child: Text(
                                    "100",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.501960813999176,
                            child: Container(
                                width: 250,
                                height: 1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xffb7b7b7),
                                      width: 0.5,
                                    ))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            height: 25,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 12,
                                  color: Colors.blue,
                                ),
                                Container(

                                  margin: EdgeInsets.symmetric(horizontal: 5),

                                  child: Text(
                                    "Unscheduled",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 94),

                                  child: Text(
                                    "29",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 25,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 12,
                                  color: Colors.green,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),

                                  child: Text(
                                    "Scheduled",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 109),
                                  child: Text(
                                    "32",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 25,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 12,
                                  color: Colors.orangeAccent,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),

                                  child: Text(
                                    "Fixed",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 140),
                                  child: Text(
                                    "19",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 25,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 12,
                                  color: Colors.red,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),

                                  child: Text(
                                    "Not verify",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 115),
                                  child: Text(
                                    "20",
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 120,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),

                            child: Column(
                              children: <Widget>[
                                ClipOval(
                                  child: Material(
                                    color:
                                    Colors.deepOrange, // button color
                                    child: InkWell(
                                      splashColor:
                                      Colors.red, // inkwell color
                                      child: SizedBox(
                                          width: 56,
                                          height: 56,
                                          child: Icon(
                                            LineIcons.play,
                                            color: Colors.white,
                                            size: 30,
                                          )),
                                      onTap: () {

                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),

                                  child: Text(
                                    "Input video",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),

                            child: Column(

                              children: <Widget>[
                                ClipOval(
                                  child: Material(
                                    color: Colors.green, // button color
                                    child: InkWell(
                                      splashColor:
                                      Colors.red, // inkwell color
                                      child: SizedBox(
                                          width: 56,
                                          height: 56,
                                          child: Icon(
                                            LineIcons.video_camera,
                                            color: Colors.white,
                                            size: 30,
                                          )),
                                      onTap: () {

                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),

                                  child: Text(
                                    "Scan now",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    //OpacityLine(),
                  ],
                )),
          ],
        )

    );
  }
}