import 'package:flutter/material.dart';
class menu_bar extends StatefulWidget {
  @override
  _menu_barState createState() => _menu_barState();
}

class _menu_barState extends State<menu_bar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          color: Colors.white,
          child: Center(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Icon(Icons.home,size: 50,color: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Icon(Icons.featured_play_list,size: 50,color: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Icon(Icons.add_circle,size: 50,color: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Icon(Icons.mode_comment,size: 50,color: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Icon(Icons.dehaze,size: 50,color: Colors.grey,),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
