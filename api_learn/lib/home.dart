import 'package:api_learn/api/requestdata.dart';
import 'package:api_learn/model/data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contributor Flutter'),centerTitle: true,),
      body: FutureBuilder(
        future: ApiDatas.loadData(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            if(snapshot.hasError){
              return _buildErrorWidget();
            }else {
              return _buildDatasListView(snapshot.data);
            }
        }else {
            return _buildLoadingWidget();
          }
      },
      ),
    );
  }
  Widget _buildDatasListView(List<Datas> datas){
    return ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index){
          return Card(
            child:  ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CachedNetworkImage(imageUrl: datas[index].profile_pic,
                imageBuilder: (context, imageProvider)=> Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                      image:  DecorationImage(
                        image:  imageProvider,fit:BoxFit.cover
                      ),
                    ),
                  ),
                ),
                ),
                title: Text('Name: '+datas[index].name),
              ),
            );
        });
  }

  Widget _buildLoadingWidget(){
    return Center(
      child: SpinKitCubeGrid(
        color: Colors.teal,
        size: 50.0,
      ),
    );
  }

  Widget _buildErrorWidget(){
    return Center(
      child: Text('Load data error'),
    );
  }
}
