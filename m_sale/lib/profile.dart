import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m_sale/profile_info.dart';
import 'package:m_sale/profile_post.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              'images/icon/menu.svg',
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Posts",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            )
          ],
        ),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              'images/icon/info.svg',
              height: 25,
              color: Color(0xff1A94A7),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Info",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            )
          ],
        ),
      ),
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff1A94A7),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
              color: Color(0xff1A94A7),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 20),
              child: SvgPicture.asset("images/icon/person.svg",
                  width: 38, height: 38, color: Color(0xff1A94A7))),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: Image.asset(
                  'images/assets/cover.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(150, 145, 0, 0),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage: AssetImage('images/assets/profile.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(245, 230, 0, 0),
                child: Icon(
                  Icons.add_circle,
                  color: Color(0xff1A94A7),
                  size: 30,
                ),
              ),
//              ],
//          ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(12.0),
            child: Text(
              'BOUR Kimhor',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(
            height: 66,
            padding: EdgeInsets.all(8),
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Color(0xff1A94A7),
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
          Expanded(
            child: TabBarView(
              children: [
                profile_post(),
                profile_info(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
