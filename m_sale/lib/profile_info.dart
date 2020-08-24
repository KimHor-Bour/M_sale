import 'package:flutter/material.dart';

class profile_info extends StatefulWidget {
  @override
  _profile_infoState createState() => _profile_infoState();
}

class _profile_infoState extends State<profile_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.purple,
                        size: 50,
                      ),
                      backgroundColor: Color(0xffEDEDED),
                      minRadius: 30),
                  info('Female', "Gender"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      child: Icon(
                        Icons.cake,
                        color: Colors.green,
                        size: 50,
                      ),
                      backgroundColor: Color(0xffEDEDED),
                      minRadius: 30),
                  info('September 6th,2000', "Date of Birth"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      child: Icon(
                        Icons.markunread,
                        color: Colors.orange,
                        size: 50,
                      ),
                      backgroundColor: Color(0xffEDEDED),
                      minRadius: 30),
                  info('bourkimhor@gmail.com', "Email"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      child: Icon(
                        Icons.phone,
                        color: Colors.red,
                        size: 50,
                      ),
                      backgroundColor: Color(0xffEDEDED),
                      minRadius: 30),
                  info('0123456789', "Phone Number"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      child: Icon(
                        Icons.home,
                        color: Colors.blueAccent,
                        size: 50,
                      ),
                      backgroundColor: Color(0xffEDEDED),
                      minRadius: 30),
                  info('Kompongthom, Cambodia', "Address"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget info(String txt, String desc) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(
            10,
            0,
            10,
            0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                txt,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                desc,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
