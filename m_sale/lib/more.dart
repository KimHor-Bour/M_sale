import 'package:flutter/material.dart';

class more extends StatefulWidget {
  @override
  _moreState createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "More",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xff1A94A7)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/assets/profile.jpg'),
                  minRadius: 50,
                ),
              ),
              Text(
                'Bour Kimhor',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.list,
                  color: Colors.red,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Manage Order',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.settings,
                  color: Colors.orange,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Setting',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.call,
                  color: Colors.green,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Contact Us',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.people,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('About Us',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.exit_to_app,
                  color: Colors.purple,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Log Out',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
