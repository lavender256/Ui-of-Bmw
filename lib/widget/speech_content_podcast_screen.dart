import 'package:flutter/material.dart';

class SpeechContentPodcastScreen extends StatelessWidget {
  final String speech;
  final String speecher;
  final String speecher2;
  final String imageUrl;

  SpeechContentPodcastScreen(
      {this.speech, this.speecher, this.imageUrl, this.speecher2});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .35,
        height: size.height * .3,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Align(alignment: Alignment.centerRight,
            child: Text(
              speech,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: size.width * .02),
            ),
          ),
          Container(
            width: size.width * .35,
            height: size.height * .1,
              child: Stack(children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: size.width * .03,
                height: size.width * .03,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(imageUrl), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              right: size.width * .042,
              bottom: size.height * .04,
              child: Text(
                speecher,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * .013),
              ),
            ),
            Positioned(
              right: size.width * .042,
              bottom: 0,
              child: Text(
                speecher2,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * .012),
              ),
            )
          ]))
        ]));
  }
}
