import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List cardList = [
    Image(
      image: AssetImage('images/assets/announ.jpg'),
      fit: BoxFit.cover,
    ),
    Image(image: AssetImage('images/assets/announce1.jpg'), fit: BoxFit.cover),
    Image(
        image: AssetImage('images/assets/announcement.jfif'),
        fit: BoxFit.cover),
    Image(image: AssetImage('images/assets/imp.jpg'), fit: BoxFit.cover),
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
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xff1A94A7)),
        ),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 20),
              child: SvgPicture.asset("images/icon/filter.svg",
                  width: 25, height: 28, color: Color(0xff1A94A7))),
          Icon(
            Icons.search,
            color: Color(0xff1A94A7),
            size: 35,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Announcement",
                      style: TextStyle(
                        color: Color(0xff1A94A7),
                        fontSize: 45,
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
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "New Offers",
                          style: TextStyle(
                            color: Color(0xff1A94A7),
                            fontSize: 45,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(80, 0, 20, 0),
                          child: Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffB1B1B1),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 345.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        product('images/assets/phone.jpg'),
                        product('images/assets/phone.jpg'),
                        product('images/assets/phone.jpg'),
                        product('images/assets/phone.jpg'),
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
                    height: 66,
                    padding: EdgeInsets.all(8),
                    child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Color(0xff1A94A7),
                      labelStyle: TextStyle(fontSize: 17),
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
                            product('images/assets/phone.jpg'),
                            product('images/assets/phone.jpg'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            product('images/assets/phone.jpg'),
                            product('images/assets/phone.jpg'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            product('images/assets/phone.jpg'),
                            product('images/assets/phone.jpg'),
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
      bottomNavigationBar: BottomBarCustom(),
    );
  }

  Widget product(String image) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      width: MediaQuery.of(context).size.width / 2.1,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 0, 0,),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/assets/announce1.jpg'),
                    minRadius: 15,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      10,
                      0,
                      10,
                      0,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.favorite_border),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Image.asset(image)),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: <Widget>[
                  Text(
                    'iPhone 11Pro',
                    style: TextStyle(fontSize: 20, color: Color(0xff1A94A7)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "499\$",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 0, 0,),
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
    );
  }
}

class BottomBarCustom extends StatelessWidget {
  const BottomBarCustom({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              title: Text('home'),
              icon: Icon(
                Icons.home,
                size: 43,
              )),
//          BottomNavigationBarItem(title: Text('home'),icon:SvgPicture.asset("images/icon/home-run.svg",width: 35,height: 40,),),
          BottomNavigationBarItem(
              title: Text('feature'),
              icon: Icon(
                Icons.featured_play_list,
                size: 40,
              )),
          BottomNavigationBarItem(
              title: Text('add'),
              icon: Icon(
                Icons.add_circle,
                size: 40,
              )),
          BottomNavigationBarItem(
              title: Text('comment'),
              icon: Icon(
                Icons.mode_comment,
                size: 40,
              )),
          BottomNavigationBarItem(
              title: Text('dehaze'),
              icon: Icon(
                Icons.dehaze,
                size: 40,
              )),
        ],
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff1A94A7),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
