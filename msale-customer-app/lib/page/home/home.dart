import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msalecustomerapp/page/buttomNavigationBar/bottom_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List cardList = [
    Image(
      image: AssetImage('assets/img/photo/announ.jpg'),
      fit: BoxFit.cover,
    ),
    Image(image: AssetImage('assets/img/photo/announce1.jpg'), fit: BoxFit.cover),
    Image(
        image: AssetImage('assets/img/photo/announcement.jfif'),
        fit: BoxFit.cover),
    Image(image: AssetImage('assets/img/photo/imp.jpg'), fit: BoxFit.cover),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  final List<Tab> tabs = <Tab>[
    Tab(
      text: 'ALL',
    ),
    Tab(
      text: 'iPhone',
    ),
    Tab(
      text: 'SAMSUNG',
    ),
    Tab(
      text: 'VIVO',
    ),
    Tab(
      text: 'OPPO',
    ),
    Tab(
      text: 'OPPO',
    ),
    Tab(
      text: 'OPPO',
    ),
    Tab(
      text: 'OPPO',
    ),
    Tab(
      text: 'OPPO',
    ),
  ];
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

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
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff1A94A7)),
        ),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 25),
              child: SvgPicture.asset("assets/img/icon/filter.svg",
                  width: 20, height: 20, color: Color(0xff1A94A7))),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Color(0xff1A94A7),
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 20.0),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Announcement",
                      style: TextStyle(
                        color: Color(0xff1A94A7),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  CarouselSlider(
                    height: 200.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: Duration(seconds: 10),
                    aspectRatio: 2.0,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    items: cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Colors.blueAccent,
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: 5.0,
                        height: 5.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Color(0xff1A94A7)
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/1.6,
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "New Offers",
                              style: TextStyle(
                                color: Color(0xff1A94A7),
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/3,
//                          margin: EdgeInsets.fromLTRB(80, 0, 20, 0),
                          child: Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffB1B1B1),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: MediaQuery.of(context).size.height*0.40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        product('assets/img/photo/phone.jpg'),
                        product('assets/img/photo/phone.jpg'),
                        product('assets/img/photo/phone.jpg'),
                        product('assets/img/photo/phone.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height*0.08,
                    padding: EdgeInsets.all(8),
                    child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Color(0xff1A94A7),
                      labelStyle: TextStyle(fontSize: 14),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              color: Color(0xff1A94A7),
                              style: BorderStyle.solid,
                              width: 2)),
                      tabs: tabs,
                      controller: _tabController,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            product('assets/img/photo/phone.jpg'),
                            product('assets/img/photo/phone.jpg'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            product('assets/img/photo/phone.jpg'),
                            product('assets/img/photo/phone.jpg'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            product('assets/img/photo/phone.jpg'),
                            product('assets/img/photo/phone.jpg'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
//      bottom_bar(),
    );
  }

  Widget product(String image) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
//      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        width: MediaQuery.of(context).size.width / 2.15,
//      height: MediaQuery.of(context).size.width/2,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/10,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/img/photo/announce1.jpg'),
                            minRadius: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/3.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'David Shop Phone',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2w ago',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width*0.05,
                      child: Icon(Icons.favorite_border)),

//                Container(
////                    width: MediaQuery.of(context).size.width/10,
//                    child: Column(
//                      children: [
//                        Icon(Icons.favorite_border),
//                      ],
//                    )),
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Image.asset(image)),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      child: Column(
                        children: [
                          Text(
                            'iPhone 11Pro',
                            style: TextStyle(fontSize: 14, color: Color(0xff1A94A7)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "499\$",
                        style: TextStyle(fontSize: 14, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 10,),
                child: Text(
                  '9 Sold',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
