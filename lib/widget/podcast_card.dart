import 'package:bmw/model/podcast.dart';
import 'package:bmw/screens/podcast_screen_desktop.dart';
import 'package:flutter/material.dart';

class PodCastCard extends StatelessWidget {
  final PodCast podcast;

  PodCastCard({this.podcast});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>PodCastScreenDesktop(podcast: podcast,))),
      child: Container(
        margin: EdgeInsets.only(right: size.width * .04, top: size.height * .05),
        width: size.width * .18,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(podcast.imageUrl), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width*.01),
                  width: size.width,
                  height: size.height * .15,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.mic_none_outlined,color: podcast.isBlack?Colors.black:Colors.white),
                    Text(podcast.title,style: TextStyle(color: podcast.isBlack?Colors.black:Colors.white,fontWeight: FontWeight.w900,fontSize: size.width*.011),),
                    Text(podcast.subtitle,style: TextStyle(color: podcast.isBlack?Colors.black:Colors.white,fontWeight: FontWeight.w900,fontSize: size.width*.012),)
                  ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
