import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapiapp/models/image.dart';
import 'package:http/http.dart' as http;

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  Future<List<Gallery>> getData() async {
    List<Gallery> imageList;
    String galleryUrl =
        'https://api.unsplash.com/photos?client_id=527337af0c48944c6452aff66fa7967b29c94a1c5b3b26cfc';
    var resp = await http.get(Uri.encodeFull(galleryUrl),
        headers: {"Accept": "application/json"});

    print('body ${resp.body}');
    if (resp.statusCode == 200) {
      var data = json.decode(resp.body) as List;

      imageList =
          data.map<Gallery>((gallery) => Gallery.fromJson(gallery)).toList();
      print('List Size: ${imageList.length}');
    }

    return imageList;
  }

  Widget listViewWidget(List<Gallery> article) {
    return Container(
      child: ListView.builder(
          itemCount: 20,
          padding: const EdgeInsets.all(2.0),
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                title: Text(
                  '${article[position].description}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: article[position].description == null
                        ? Image(
                            image: AssetImage('images/no_image_available.png'),
                          )
                        : Image.network('${article[position].imageUrl.small}'),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('DevTainment'),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? listViewWidget(snapshot.data)
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
