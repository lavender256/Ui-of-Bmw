import 'package:flutter/material.dart';

class LargLongContentPodcastScreen extends StatelessWidget {

  final String txt;
  LargLongContentPodcastScreen({this.txt});

  @override
  Widget build(BuildContext context) {var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.3,
      child: Center(child: Text(txt.toUpperCase(),style: TextStyle(fontSize: size.width*.045,fontWeight: FontWeight.w800,letterSpacing: 1.4),),),
    );
  }
}
