//import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
//class test extends StatefulWidget {
//  @override
//  _testState createState() => _testState();
//}
//
//class _testState extends State<test> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("hello"),
//      ),
//      body: SingleChildScrollView(
//        child: DefaultTabController(
//          length: 2,
//          child: Column(
//            children: <Widget>[
//              Container(
//                constraints: BoxConstraints.expand(height: 50),
//                child: TabBar(tabs: [
//                  Tab(
//                    child: Container(
//                      margin: EdgeInsets.only(right: 20),
//                      child: Row(
//                        children: <Widget>[
//                          SvgPicture.asset(
//                            'images/icon/menu.svg',
//                            height: 24,
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.all(10.0),
//                            child: Text(
//                              "Posts",
//                              style: TextStyle(
//                                fontSize: 25,
//                              ),
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//                  Tab(
//                    child: Container(
//                      margin: EdgeInsets.only(left: 20),
//                      child: Row(
//                        children: <Widget>[
//                          SvgPicture.asset(
//                            'images/icon/info.svg',
//                            height: 25,
//                            color: Color(0xff1A94A7),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.all(10.0),
//                            child: Text(
//                              "Info",
//                              style: TextStyle(
//                                fontSize: 25,
//                              ),
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//
//                ]),
//              ),
//              Expanded(
//                child: Container(
//                  child: TabBarView(children: [
//                    Container(
//                      child: profile_post(),
//                    ),
//                    Container(
//                      child: profile_info(),
//                    ),
//                  ]),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//  Widget profile_post() {
//    return Column(
//      children: <Widget>[
//        product1("images/assets/announ.jpg"),
//        product1("images/assets/announ.jpg"),
//        product1("images/assets/announ.jpg"),
//        product1("images/assets/announ.jpg"),
//      ],
//    );
//  }
//
//  Widget product1(String img) {
//    return Container(
//      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
//      width: MediaQuery.of(context).size.width,
////                      height: 250,
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(20),
//        boxShadow: [
//          BoxShadow(
//            color: Colors.grey.withOpacity(0.4),
////                        spreadRadius: 5,
//            blurRadius: 7,
//            offset: Offset(2, 2),
//          ),
//        ],
//      ),
//      child: Container(
//        color: Colors.white,
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.fromLTRB(
//                10,
//                10,
//                0,
//                0,
//              ),
//              child: Row(
//                children: <Widget>[
//                  CircleAvatar(
//                    backgroundImage: AssetImage('images/assets/announce1.jpg'),
//                    minRadius: 30,
//                  ),
//                  Container(
//                    margin: EdgeInsets.fromLTRB(
//                      10,
//                      0,
//                      10,
//                      0,
//                    ),
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        Text(
//                          'David Shop Phone',
//                          style: TextStyle(
//                              fontSize: 20, fontWeight: FontWeight.bold),
//                        ),
//                        Text(
//                          '2w ago',
//                          style: TextStyle(fontSize: 14, color: Colors.grey),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                      margin: EdgeInsets.only(left: 120),
//                      child: Icon(
//                        Icons.more_vert,
//                        size: 30,
//                      )),
//                ],
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.fromLTRB(10, 8, 0, 2),
//              child: Text(
//                "Price 199",
//                style: TextStyle(fontSize: 22, color: Color(0xff1A94A7)),
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.fromLTRB(10, 2, 0, 8),
//              child: Text(
//                "Oppo folding phone",
//                style: TextStyle(
//                  fontSize: 22,
//                ),
//              ),
//            ),
//            Container(
//                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
//                child: Image.asset(img)),
//            Padding(
//              padding: const EdgeInsets.fromLTRB(25, 0, 0, 10),
//              child: Row(
//                children: <Widget>[
//                  Padding(
//                    padding: const EdgeInsets.only(right: 8),
//                    child: Icon(
//                      Icons.star,
//                      color: Colors.grey,
//                    ),
//                  ),
//                  Text(
//                    "133 Interest",
//                    style: TextStyle(fontSize: 20, color: Colors.grey),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget profile_info() {
//    return Column(
//      children: <Widget>[
//        Container(
//          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
//          child: Row(
//            children: <Widget>[
//              CircleAvatar(
//                  child: Icon(
//                    Icons.person,
//                    color: Colors.purple,
//                    size: 50,
//                  ),
//                  backgroundColor: Color(0xffEDEDED),
//                  minRadius: 30),
//              info('Female', "Gender"),
//            ],
//          ),
//        ),
//        Container(
//          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
//          child: Row(
//            children: <Widget>[
//              CircleAvatar(
//                  child: Icon(
//                    Icons.cake,
//                    color: Colors.green,
//                    size: 50,
//                  ),
//                  backgroundColor: Color(0xffEDEDED),
//                  minRadius: 30),
//              info('September 6th,2000', "Date of Birth"),
//            ],
//          ),
//        ),
//        Container(
//          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
//          child: Row(
//            children: <Widget>[
//              CircleAvatar(
//                  child: Icon(
//                    Icons.markunread,
//                    color: Colors.orange,
//                    size: 50,
//                  ),
//                  backgroundColor: Color(0xffEDEDED),
//                  minRadius: 30),
//              info('bourkimhor@gmail.com', "Email"),
//            ],
//          ),
//        ),
//        Container(
//          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
//          child: Row(
//            children: <Widget>[
//              CircleAvatar(
//                  child: Icon(
//                    Icons.phone,
//                    color: Colors.red,
//                    size: 50,
//                  ),
//                  backgroundColor: Color(0xffEDEDED),
//                  minRadius: 30),
//              info('0123456789', "Phone Number"),
//            ],
//          ),
//        ),
//        Container(
//          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
//          child: Row(
//            children: <Widget>[
//              CircleAvatar(
//                  child: Icon(
//                    Icons.home,
//                    color: Colors.blueAccent,
//                    size: 50,
//                  ),
//                  backgroundColor: Color(0xffEDEDED),
//                  minRadius: 30),
//              info('Kompongthom, Cambodia', "Address"),
//            ],
//          ),
//        ),
//      ],
//    );
//  }
//
//  Widget info(String txt, String desc) {
//    return Row(
//      children: <Widget>[
//        Container(
//          margin: EdgeInsets.fromLTRB(
//            10,
//            0,
//            10,
//            0,
//          ),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(
//                txt,
//                style: TextStyle(fontSize: 20),
//              ),
//              Text(
//                desc,
//                style: TextStyle(fontSize: 14, color: Colors.grey),
//              ),
//            ],
//          ),
//        ),
//      ],
//    );
//  }
//}
