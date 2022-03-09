
import 'package:bmw/data/data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .05,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menuList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {},
              onHover: (val) {
                setState(() {
                  isHover=val;
                });

              },
              child: Container(
                margin: EdgeInsets.only(left: 40),
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    menuList[index],
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                  Container(
                    width: size.width * .06,
                    color: isHover?Colors.blue:Colors.white,
                    height: 2,
                  )
                ],
              )),
            );
          }),
    );
  }
}
