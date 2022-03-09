
import 'package:bmw/model/podcast.dart';
import 'package:flutter/material.dart';

class InfoPodcastDesktop extends StatelessWidget {
final PodCast podcast;

InfoPodcastDesktop({this.podcast});

  @override
  Widget build(BuildContext context) {var size = MediaQuery.of(context).size;
    return Container(padding: EdgeInsets.symmetric(horizontal: size.width*.15,vertical: size.height*.05),
      width:size.width,
      height: size.height*.5,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(podcast.info,style: TextStyle(
              color: Colors.black,fontSize: size.width*.02
          ),),
          Text(podcast.date,style: TextStyle(
            color: Colors.black38,fontWeight: FontWeight.w800
          ),)
        ],
      )
    );
  }
}
