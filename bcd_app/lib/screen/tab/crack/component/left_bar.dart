import 'package:bcd_app/utils/bcd_utils.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  final Color color;
  LeftBar(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
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
                height: 130,
                width: 10,
                alignment: Alignment.center),
          ],
        ));
  }
}
