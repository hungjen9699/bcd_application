import 'package:bcd_app/utils/bcd_utils.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'left_crack_box_image.dart';
import 'left_of_not_verify_crack_box.dart';
import 'left_bar.dart';
import 'not_verify_bottom_button.dart';

class InputNotVerifyBox extends StatelessWidget {
  final String value;
  InputNotVerifyBox(this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, top: 20),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 120,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(1, 10), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        HexColor("#ffffff"),
                        Color.fromRGBO(37, 49, 61, 1)
                      ]),
                  color: Color.fromRGBO(37, 49, 61, 1)),
              child: Row(
                children: [
                  LeftCrackBoxImage(),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20, bottom: 10, left: 5),
                          child: Text(
                            'VRN_0121',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          )),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Colors.white),
                            Text(
                              ' 3m from checkpoint A',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.white,
                            ),
                            Text(
                              ' 12/01/2020 11:00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            )
          ],
        ));
  }
}
