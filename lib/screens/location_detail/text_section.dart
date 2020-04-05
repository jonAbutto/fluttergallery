import 'package:flutter/material.dart';
import 'package:flutterapiapp/style.dart';

class TextSection extends StatelessWidget {
  final _title;
  final _body;

  //constructor
  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
          child: Text(_title,
          style: TitleStyle,),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
          child: Text(_body, style: BodyStyle,),
        ),
      ],
    );
  }
}
