import 'package:bcd_app/screen/tab/crack/component/left_bar.dart';
import 'package:bcd_app/screen/tab/crack/component/left_of_verify_crack_box.dart';
import 'package:bcd_app/screen/tab/schedule/component/left_of_history_box.dart';
import 'package:flutter/material.dart';

class HistoryBox extends StatelessWidget {
  final Color color;
  final String status;

  HistoryBox(this.color, this.status);
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
        Container(
        width: MediaQuery.of(context).size.width / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: color.withOpacity(0.1),
                        spreadRadius: 7,
                        blurRadius: 20,
                        offset:
                        Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),

                    border: Border.all(
                        color: const Color(0xff7e7e7e), width: 0.1),
                    color: color),
                height: 160,
                width: 10,
                alignment: Alignment.center),
          ],
        )),
            LeftOfHistoryBox(color, status)
          ],
        ));
  }
}