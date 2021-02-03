import 'package:flutter/material.dart';
import 'Response.dart';
import 'Data.dart';
import 'ApiServiceProvider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiServiceProvider _apiServiceProvider = new ApiServiceProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: FutureBuilder<Response>(
          future: _apiServiceProvider.getUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Response list = snapshot.data;
              return ListView.builder(
                  itemCount: list.id.length,
                  itemBuilder: (context, index) {
                    Dat user = list.id[index];

                    return Container(
                        padding: EdgeInsets.all(2),
                        height: 140,
                        child: Card(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(user.title + " "),
                            Image.network(user.url),
                            Image.network(user.thumbnailUrl),
                          ],
                        )));
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
