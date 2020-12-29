import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryBottomButton extends StatelessWidget {
  final Color color;
  final String status;
  HistoryBottomButton(this.color, this.status);

  @override
  Widget build(BuildContext context) {
    return    Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child:Row(children: [
                Icon(Icons.qr_code, size: 20,color: Colors.blue,)
                , Text(
                  'VRN_0121',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black54,

                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              ],),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child:
              Row(children: [
                Icon(Icons.location_pin, size: 20,color: Colors.green,)
                , Text(
                  ' 3m from checkpoint A',
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                )
              ],),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child:
              Row(children: [
                Icon(Icons.report_problem, size: 20,color: color,)
                , Text(
                  color==Colors.redAccent?"High":color==Colors.orangeAccent?"Medium":"Low",
                  style: TextStyle(
                      color: color,
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                )
              ],),
            ),
            Container(
              child:
              Row(children: [
                Icon(status=="Fixed"?Icons.done:Icons.remove_circle_outline_rounded, size: 20, color: status=="Fixed"?Colors.green:Colors.blueGrey,)
                , Text(
                  status,
                  style: TextStyle(
                      color: status=="Fixed"?Colors.green:Colors.blueGrey,
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                )
              ],),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child:
              Row(children: [
                Icon(Icons.rate_review_outlined, size: 20, color: Colors.blueAccent,)
                , Text(
                  "Evaluation: 7.8/10",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                )
              ],),
            ),


          ],
        ));
  }
}
