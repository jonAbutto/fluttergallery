import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imgPath;
  final double height;

  //constructor
  ImageBanner({@required this.imgPath,this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints: BoxConstraints.expand(height: height),
      decoration: BoxDecoration(color: Colors.amber),
      child: Image.asset(
        imgPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
