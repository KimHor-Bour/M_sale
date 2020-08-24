import 'package:flutter/material.dart';
import 'package:msalecustomerapp/providers/user_provider.dart';
import 'package:provider/provider.dart';

class Profile_info extends StatefulWidget {
  @override
  _Profile_infoState createState() => _Profile_infoState();
}

class _Profile_infoState extends State<Profile_info> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserProvider>(context, listen: false).getUserdata();
    });
  }

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            children: <Widget>[
              info(Icons.person,Colors.green,userProvider.firstname +" "+ userProvider.lastname, "FirstName/LastName"),
              info(Icons.perm_identity,Colors.red,userProvider.username, "UserName"),
              info(Icons.tag_faces,Colors.yellow,userProvider.gender == null ? "N/A" : userProvider.gender, "Gender"),
              info(Icons.markunread,Colors.orange,userProvider.email, "Email"),
              info(Icons.phone,Colors.purple,userProvider.phone_number, "Phone Number"),
              info(Icons.home,Colors.blueAccent,userProvider.address == null ? "N/A": userProvider.address, "Address"),
            ],
          ),
        ),
      ),
    );
  }

  Widget info(IconData icons,Color colors, String txt, String desc) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: <Widget>[
          CircleAvatar(
              child: Icon(
                icons,
                color: colors,
                size: 30,
              ),
              backgroundColor: Color(0xffEDEDED),
              minRadius: 20),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Text(
                    txt,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
