
import 'package:bmw/components/color.dart';
import 'package:flutter/material.dart';

import 'how_does_this_sound_platform_circle.dart';

class HowDoesThisSound extends StatefulWidget {
  @override
  _HowDoesThisSoundState createState() => _HowDoesThisSoundState();
}

class _HowDoesThisSoundState extends State<HowDoesThisSound> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .15, vertical: size.height * .05),
      width: size.width,
      height: size.height * .7,
      color: backColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * .2,
            height: size.height * .4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/63DPCNVg/podcast-cover.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: size.width * .45,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HOW DOES THIS SOUND?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: size.width * .025),
                ),
                Text(
                  "You can also listen to this article via Changing Lanes, the official BMW podcast.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: size.width * .012,
                      letterSpacing: 1.4),
                ),
                Text(
                  "Apart from this and other narrated articles, Changing Lanes offers you fresh new episodes every week, packed with exclusive insights on tech, lifestyle, design, cars, and more – brought to you by hosts Nicki and Jonathan. ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: size.width * .012,
                      letterSpacing: 1.4),
                ),
                Text(
                  "Find and subscribe to Changing Lanes on all major podcasting platforms.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: size.width * .012,
                      letterSpacing: 1.4),
                ),
                Container(
                  width: size.width * .2,
                  height: size.height * .1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HowDoesThisSoundPlatformCircle(image: "https://i.postimg.cc/nLpw1kDV/apple-podcast.jpg",),
                      HowDoesThisSoundPlatformCircle(image: "https://i.postimg.cc/vZr6s7SV/spotify.jpg",),
                      HowDoesThisSoundPlatformCircle(image: "https://i.postimg.cc/R0P568Dx/google-padcast.jpg",),
                      HowDoesThisSoundPlatformCircle(image: "https://i.postimg.cc/Dz6ppXrr/deezar.png",),
                    ],
                  ),
                ),
                Container(
                  width: size.width * .35,
                  height: size.height * .1,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width*.1
                        ,height: size.width*.07,color: Color(0xff4f4f4f)
                        ,child: Center(child: Text("#INTERVIREW",style: TextStyle(
                          color: mainColor,fontWeight: FontWeight.w800,fontSize: size.width*.012
                        ),)),
                      ),
                      Container(  width: size.width*.1
                        ,height: size.width*.07,
                        color: Color(0xff4f4f4f)
                        ,child: Center(child: Text("#Podcast",style: TextStyle(
                          color: mainColor,fontWeight: FontWeight.w800,fontSize: size.width*.012
                      ),)),
                      ),
                      Container(  width: size.width*.1
                        ,height: size.width*.07,
                        color: Color(0xff4f4f4f)
                        ,child: Center(child: Text("#Sustainability",style: TextStyle(
                          color: mainColor,fontWeight: FontWeight.w800,fontSize: size.width*.012
                      ),)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
