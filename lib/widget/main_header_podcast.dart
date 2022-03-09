import 'package:bmw/model/podcast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHeaderPodCast extends StatelessWidget {
  final PodCast podcast;

  MainHeaderPodCast({this.podcast});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(podcast.imageUrl2),fit: BoxFit.cover )),
      child: Stack(
        children: [
          Positioned(
              top: size.height * .2,
              left: size.width * .08,
              child: Container(
                width: size.width * .5,
                height: size.height * .3,
                child: Text(
                  '${podcast.title} : ${podcast.subtitle}',
                  style: TextStyle(
                      color: podcast.isBlack?Colors.black:Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: size.width * .04),
                ),
              )),
          Positioned(
              bottom: size.height * .05,
              right: size.width * .427,
              left: size.width * .427,
              child: Container(
                height: size.height * .04,
                child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.timelapse_outlined,color: Colors.grey[900],),
                    Text("${podcast.readingTime.toString()} min reading time",style: TextStyle(
                        color: Colors.grey[900],fontWeight: FontWeight.w700,fontSize: size.width*.015
                    ),),
                  ],
                )

              ))
        ],
      ),
    );
  }
}
