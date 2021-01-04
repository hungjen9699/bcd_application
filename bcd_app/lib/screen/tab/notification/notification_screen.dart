import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/screen/drawer/main_drawer.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  final UserDTO dto;

  const NotificationScreen({Key key, this.dto}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return NotificationScreenState();
  }
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: DEFAULT_COLOR,
          title: Text(
            "Notification",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        drawer: MainDrawer(dto: widget.dto),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Divider(
                    height: 12.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/72/eb/b6/72ebb6e15a76ac319e7275d8cb2d6626.jpg"),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text("Request to scan"),
                        SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "12/01/2020",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                    subtitle: Text("Manager request you to scan ..."),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
