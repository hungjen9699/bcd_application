import 'package:flutter/material.dart';

class VerifyButtonBottom extends StatelessWidget {
  final Color color;
  final String status;
  VerifyButtonBottom(this.color, this.status);

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
                  ' Low',
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
                Icon(status=="Repaired"?Icons.done:status=="Scheduled"?Icons.hardware:Icons.close_outlined, size: 20, color: status=="Repaired"?Colors.green:status=="Scheduled"?Colors.blueAccent:Colors.blueGrey,)
                , Text(
                  status,
                  style: TextStyle(
                     color: status=="Repaired"?Colors.green:status=="Scheduled"?Colors.blueAccent:Colors.blueGrey,
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
