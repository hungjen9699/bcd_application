import 'package:bcd_app/utils/bcd_utils.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputNotVerify extends StatelessWidget {
  InputNotVerify();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String _color = '';
  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,height: 400,
        child: Column(children: [
          Container(
            width: double.infinity,height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              color: Colors.green,

            ),
            child: Column(children: [Container(margin:EdgeInsets.only(top: 15),child: Text("Verify crack",style: TextStyle(fontSize: 25,fontFamily: "Montserrat",color: Colors.white),),)],),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(margin:EdgeInsets.only(bottom: 10),child: Row(children: [ Icon(Icons.qr_code, size: 20,color: Colors.blue,),Text(" VRN_001",style: TextStyle(fontSize: 16),)],),),
                        Container(margin:EdgeInsets.only(bottom: 10),child: Row(children: [ Icon(Icons.location_pin,size: 20,color: Colors.green,),Text(" 3m from checkpoint 1",style: TextStyle(fontSize: 16))],),),
                        Container(child: Row(children: [ Icon(Icons.timer, size: 20,color: Colors.deepOrange,),Text(" 12/12/2020 11:00",style: TextStyle(fontSize: 16))],),),

                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              labelText: 'Description',
                              //prefixIcon: Icon(Icons.email),
                              icon: Icon(Icons.perm_identity)),
                        ),
                        FormField(
                          builder: (FormFieldState state) {
                            return InputDecorator(
                              decoration: InputDecoration(
                                icon: const Icon(Icons.color_lens),
                                labelText: 'Severity',
                              ),
                              isEmpty: _color == '',
                              child: new DropdownButtonHideUnderline(
                                child: new DropdownButton(
                                  value: _color,
                                  isDense: true,
                                  onChanged: (String newValue) {

                                  },
                                  items: _colors.map((String value) {
                                    return new DropdownMenuItem(
                                      value: value,
                                      child: new Text("xx"),
                                    );
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin:EdgeInsets.symmetric(horizontal: 10),
                                child:   FlatButton(
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {
                                    /*...*/
                                  },
                                  child: Text(
                                    "OK",
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ),),
                              Container(
                                margin:EdgeInsets.symmetric(horizontal: 10),
                                child:   FlatButton(
                                  color: Colors.blueGrey,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: true).pop();
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ),),

                            ],),
                        )
                      ],)
                ),
              ],
            ),
          ),
        ],));
  }
}
