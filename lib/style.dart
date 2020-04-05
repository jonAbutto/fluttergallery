import 'package:flutter/material.dart';

const String FontNameDefault = 'Montserrat';
const _appBarTextSize=26.0;
const _titleTextSize=20.0;
const _bodyTextSize=18.0;

const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

const DefaultPaddingHorizontal = 12.0;

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: _appBarTextSize,
  color: Colors.white,
);
const TitleStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w500,
  fontSize: _titleTextSize,
  color: Colors.black,
);
const BodyStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: _bodyTextSize,
  color: Colors.black,
);
