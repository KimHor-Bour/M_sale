import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'MSale',
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xff1A94A7)),
        ),
        actions: <Widget>[
//          SvgPicture.asset("images/icon/filter.svg", color: Color(0xff1A94A7),),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.filter,
                size: 30,
                color: Color(0xff1A94A7),
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Material(
                elevation: 15.0,
                shadowColor: Colors.lightBlue.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Color(0xffB1B1B1)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Announcement", style: TextStyle(
                      color: Color(0xff1A94A7), fontSize: 45,),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'images/assets/announ.jpg', width: MediaQuery
                            .of(context)
                            .size
                            .width / 1.1,)),
                  ),
                ],),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("New Offers",
                          style: TextStyle(color: Color(0xff1A94A7), fontSize: 45,),),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(80, 0, 20, 0),
                          child: Text("View All", style: TextStyle(fontSize: 20,
                              color: Color(0xffB1B1B1),
                              fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,)),
                    ],
                  ),
//                  Expanded(child: ListView.builder(
//                      shrinkWrap: true,
//                      scrollDirection: Axis.horizontal,
//                      itemCount: 5,
//                      itemBuilder: (BuildContext context, int index) => Card(
//                        child: Center(
//                          child:product(),
//                        ),
//                      )),),
                  product(),
                ],),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('ALL',style: TextStyle(fontSize: 25,color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('SUMSUNG',style: TextStyle(fontSize: 25,color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('APPLE',style: TextStyle(fontSize: 25,color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('OPPO',style: TextStyle(fontSize: 25,color: Colors.grey),),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            product(),
                            product(),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            product(),
                            product(),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            product(),
                            product(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],),
            ),
          ],
        ),
      ),
    );
  }


  Widget product() {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      width: MediaQuery
          .of(context)
          .size
          .width / 2.1,
//                      height: 250,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
//                        spreadRadius: 5,
//                        blurRadius: 7,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'images/assets/announce1.jpg'), minRadius: 15,),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0,),
                  child: Column(
                    children: <Widget>[
                      Text('David Shop Phone', style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),),
                      Text('2w ago', style: TextStyle(
                          fontSize: 10, color: Colors.grey),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Image.asset('images/assets/phone.jpg')),
            Row(
              children: <Widget>[
                Text('iPhone 11Pro', style: TextStyle(
                    fontSize: 20, color: Color(0xff1A94A7)),),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "499", style: TextStyle(fontSize: 20, color: Colors
                      .red),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 170, 10),
              child: Text('9 Sold', style: TextStyle(fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}


