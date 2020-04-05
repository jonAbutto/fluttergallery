import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapiapp/models/location.dart';
import 'package:flutterapiapp/widgets/location_tile.dart';

class TileOverlay extends StatelessWidget {
  final Location location;

  TileOverlay(this.location);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(color: Colors.pink.withOpacity(0.7)),
          child:  LocationTile(location: location, darkTheme: true),
        )
      ],
    );
  }
}
