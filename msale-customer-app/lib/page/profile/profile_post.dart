import 'package:flutter/material.dart';
import 'package:msalecustomerapp/api/api.dart';
import 'package:msalecustomerapp/model/secondhand.dart';
import 'package:msalecustomerapp/providers/second_provider.dart';
import 'package:provider/provider.dart';

class Profile_post extends StatefulWidget {
  @override
  _Profile_postState createState() => _Profile_postState();
}

class _Profile_postState extends State<Profile_post> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SecondHandProvider>(context, listen: false).getSecondhand();
    });
  }

  @override
  Widget build(BuildContext context) {
    SecondHandProvider secondHandProvider =
        Provider.of<SecondHandProvider>(context);

    return Scaffold(
      body: secondHandProvider.loadding
          ? _buildLoadingWidget()
          : secondHandProvider.data.length == 0
              ? Center(
                  child: Text("NoData!"),
                )
              : ListView.builder(
                  itemCount: secondHandProvider.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
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
                                0,
                                0,
                                0,
                              ),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/img/photo/profile.jpg'),
                                    minRadius: 25,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.68,
                                    margin: EdgeInsets.all(10),
//                                    margin: EdgeInsets.fromLTRB(
//                                      10,
//                                      0,
//                                      10,
//                                      0,
//                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          secondHandProvider.data[index]
                                                  .created_by.firstname + " " +
                                              secondHandProvider.data[index]
                                                  .created_by.lastname,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                          child: Text(
                                            '2w ago',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.more_vert,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 0, 2),
                              child: Text(
                                secondHandProvider.data[index].price
                                        .toString() +" "+
                                    "\$",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff1A94A7)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 2, 0, 8),
                              child: Text(
                                secondHandProvider.data[index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.25,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Image.network(
                                "http://178.128.107.102:83/api/file/" +
                                    secondHandProvider
                                        .data[index].image[0].file_name,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0xff767676),
                                    ),
                                  ),
                                  Text(
                                    "133 Interest",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff767676)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Color(0xff1A94A7),
        onPressed: null,
        child: new Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildErrorWidget() {
    return Center(
      child: Text('Load data error.'),
    );
  }
}
