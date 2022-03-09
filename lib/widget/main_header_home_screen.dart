
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';


class MainHeaderHomeScreen extends StatelessWidget {
  int selectIndexMenu = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .85,
      decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
              image: NetworkImage("https://i.postimg.cc/dV8xdXDS/2.jpg"),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              bottom: size.height * .05,
              left: size.width * .05,
              child: Container(
                width: size.width * .5,
                height: size.height * .5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.mic_none_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Going green",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: size.width * .02),
                        )
                      ],
                    ),
                    Text(
                      "Travel with the BMW iX: sustainable enjoyment in\nSouth Tyrol",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Titilli",
                          fontSize: size.width * .042),
                    ),
                    Container(
                      width: size.width * .12,
                      height: size.height * .07,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Center(
                        child: Text(
                          "Read more",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(child: Container(
              width: size.width
              ,height: size.height*.2,
              decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black54,
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.center
          ),))),
          Positioned(
              top: size.height * .02,
              left: size.width * .2,
              right: size.width * .2,
              child:CustomAppBar())
        ],
      ),
    );
  }
}
