import 'package:flutter/material.dart';

class RightLongContentPodcastScreen extends StatelessWidget {
  final String txt;

  RightLongContentPodcastScreen({this.txt});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: size.width * .35,
        height: size.height * .32,
        child: Text(
          txt,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: size.width * .011),
        ),
      ),
    );
  }
}
