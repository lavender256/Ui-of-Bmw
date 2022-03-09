import 'package:flutter/material.dart';

class HowDoesThisSoundPlatformCircle extends StatelessWidget {
final String image;

HowDoesThisSoundPlatformCircle({this.image});

  @override
  Widget build(BuildContext context) {  var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.035,
      height: size.width*.035,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      image: DecorationImage(fit: BoxFit.cover,
        image: NetworkImage(image)
      )
      ),
    );
  }
}
