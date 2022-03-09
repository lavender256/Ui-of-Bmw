import 'package:flutter/material.dart';

class BmwModelsHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .4,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "BMW in your country",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: size.width * .021),
          ),
          Text(
            "ALL BMW MODELS",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: size.width * .05),
          ),
          GestureDetector(
            child: Container(
              width: size.width * .2,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                  Text(
                    " Find your BMW ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .023),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
