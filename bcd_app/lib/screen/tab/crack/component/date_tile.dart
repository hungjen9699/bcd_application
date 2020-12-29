import 'package:bcd_app/screen/tab/crack/component/crack_detail_title.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'crack_not_verify_box.dart';
import 'package:bcd_app/data/data.dart';
import 'package:bcd_app/model/date_model.dart';
class ListDates extends StatefulWidget {
  ListDates();
  @override
  State<StatefulWidget> createState() {
    return _ListDatesState();
  }
}

class _ListDatesState extends State<ListDates> {
  List<DateModel> dates = new List<DateModel>();
  String todayDaysis ="12";
  @override
  void initState() {
    super.initState();
    dates=getDates();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Container(
               margin: EdgeInsets.only(left: 20,bottom: 10),
               child: Text(
                 '2020 NOV',
                 style: TextStyle(
                     fontFamily: 'Montserrat',
                     color: Colors.black54,
                     fontSize: 18,
                     fontWeight: FontWeight.w700),
               ),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                height: 60,
                child: ListView.builder(
                    itemCount: dates.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return DateTile(
                        weekDay: dates[index].weekDay,
                        date: dates[index].date,
                        isSelected: todayDaysis == dates[index].date,
                      );
                    }),
              ),
              CrackNotVerifyBox("xx"),
              CrackNotVerifyBox("xx"),
              CrackNotVerifyBox("xx"),

            ],
          ),
        ),
      ),
    );
  }
}
class DateTile extends StatelessWidget {

  String weekDay;
  String date;
  bool isSelected;
  DateTile({this.weekDay, this.date, this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: isSelected ? Color(0xffFCCD00) : Colors.transparent,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(date, style: TextStyle(
              color: isSelected ? Colors.black : Colors.black54,
              fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 10,),
          Text(weekDay, style: TextStyle(
              color: isSelected ? Colors.black : Colors.black54,
              fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
