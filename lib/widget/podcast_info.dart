import 'package:bmw/components/text.dart';
import 'package:flutter/material.dart';

class PodCastInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: size.width * .04),
      width: size.width * .3,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "THE BMW\nPODCAST:\nCHANGING\nLANES",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: size.width * .03),
          ),
          Text(
            changingLanes,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600),
          ),
          Container(
            width: size.width * .11,
            height: size.height * .07,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
              child: Text(
                "Listen now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
            ),
          )
        ],
      ),
    );
  }
}
