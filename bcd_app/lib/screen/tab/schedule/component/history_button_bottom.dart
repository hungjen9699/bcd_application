import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HistoryButtonBottom extends StatelessWidget {
  final Color color;
  final String status;
  HistoryButtonBottom(this.color, this.status);

  @override
  Widget build(BuildContext context) {
    return    Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'VRN_0121',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Position: 3m from checkpoint A',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 10),

                child: Row(children: [
                  Text(
                    'Status: ',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Fixed",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),


                ],)),
            Container(
                margin: EdgeInsets.only(bottom: 10),

                child: Row(children: [
                  Text(
                    'Severity: ',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    color==Colors.redAccent?'High':color==Colors.yellowAccent?'Medium':'Low',
                    style: TextStyle(
                        color: color,
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],)),
            Container(
              margin: EdgeInsets.only(bottom: 10),
                child: Row(children: [
                  Text(
                    'Evaluation: 80%',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],)),
            Container(width: 200,height: 10,color: Colors.green,
            child: Row(children: [
              Expanded(child: Container(color: Colors.green,),flex: 8,),
              Expanded(child: Container(color: Colors.yellow,),flex: 2,)

            ],),
            ),
            Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 30,
                      child: FlatButton(
                        color: color,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "View Details",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 30,
                    //   width: 70,
                    //   margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    //
                    //
                    //   child: FlatButton(
                    //     color: Colors.black12,
                    //     textColor: Colors.white,
                    //     disabledColor: Colors.grey,
                    //     disabledTextColor: Colors.black,
                    //     padding: EdgeInsets.all(8.0),
                    //     splashColor: Colors.blueAccent,
                    //     onPressed: () {
                    //       /*...*/
                    //     },
                    //     child: Text(
                    //       "Denined",
                    //       style: TextStyle(fontSize: 14.0),
                    //     ),
                    //   ),
                    // ),
                  ],
                )),
          ],
        ));
  }
}
