import 'package:flutter/material.dart';

class LeftLongContentPodcastScreen extends StatelessWidget {
 final String txt;


 LeftLongContentPodcastScreen({this.txt});

  @override
  Widget build(BuildContext context) {var size = MediaQuery.of(context).size;
    return Container(
     width: size.width*.35,height: size.height*.4,
     child: Text(txt,style: TextStyle(
         color: Colors.black,
         fontWeight: FontWeight.w400,
         fontSize: size.width*.011
     ),),
    );
  }
}
