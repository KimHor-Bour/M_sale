import 'package:flutter/material.dart';

class profile_post extends StatefulWidget {
  @override
  _profile_postState createState() => _profile_postState();
}

class _profile_postState extends State<profile_post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            product1("images/assets/announ.jpg"),
            product1("images/assets/announ.jpg"),
            product1("images/assets/announ.jpg"),
            product1("images/assets/announ.jpg"),
          ],
        ),
      ),
    );
  }

  Widget product1(String img) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: MediaQuery.of(context).size.width,
//                      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
//                        spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(
                10,
                10,
                0,
                0,
              ),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/assets/announce1.jpg'),
                    minRadius: 30,
                  ),
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
                          'David Shop Phone',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2w ago',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 120),
                      child: Icon(
                        Icons.more_vert,
                        size: 30,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 0, 2),
              child: Text(
                "Price 199\$",
                style: TextStyle(fontSize: 22, color: Color(0xff1A94A7)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 0, 8),
              child: Text(
                "Oppo folding phone",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Image.asset(img)),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "133 Interest",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
