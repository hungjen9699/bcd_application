import 'package:bcd_app/screen/tab/crack/component/left_crack_box_image.dart';
import 'package:bcd_app/screen/tab/crack/component/verify_bottom_button.dart';
import 'package:bcd_app/screen/tab/schedule/component/history_button_bottom.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';



class LeftOfHistoryBox extends StatelessWidget {
  final Color color;
  final String status;
  LeftOfHistoryBox(this.color, this.status);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 9 / 10 - 10,
      height: 220,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: color?.withOpacity(0.05),
              spreadRadius: 2,
              blurRadius: 40,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: color, width: 0.1),
          color: Colors.white),
      child: Row(
        children: [
          LeftCrackBoxImage(),
          HistoryButtonBottom(color,status),
        ],
      ),
    );
  }
}
