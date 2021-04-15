import 'package:bcd_app/data/data.dart';
import 'package:bcd_app/model/date_model.dart';
import 'package:bcd_app/objects/maintainanceDTO.dart';
import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/repositories/maintainance_repository.dart';
import 'package:bcd_app/utils/splash_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/history_datetime_scroll.dart';

class HistoryScreen extends StatefulWidget {
  final UserDTO dto;
  HistoryScreen(this.dto);
  @override
  State<StatefulWidget> createState() {
    return __HistoryScreenState();
  }
}

class __HistoryScreenState extends State<HistoryScreen> {
  List<int> listCrack = new List<int>();
  String todayDaysis = "12";
  DateTime selectedDate = DateTime.now().subtract(Duration(days: 0));

  List<DateModel> dates = new List<DateModel>();
  List<DateTime> markedDates = [DateTime.now()];
  @override
  void initState() {
    super.initState();
    dates = getDates();
  }

  @override
  Widget build(BuildContext context) {
    MaintainanceRepository repo = new MaintainanceRepository();
    return FutureBuilder<List<MaintainanceDTO>>(
      future: repo.getCompletedMaintainance(),
      builder: (BuildContext context,
          AsyncSnapshot<List<MaintainanceDTO>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          if (snapshot != null && snapshot.data.length > 0) {
            return HistoryDateTimeScroll(
                selectedDate, widget.dto, snapshot.data);
          } else
            return Container(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 320),
                child: Text(
                  "No schedule founded",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/notfoundschedule.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ); // snapshot.data  :- get your object which is pass from your downloadData() function
        }
      },
    );
  }
}
