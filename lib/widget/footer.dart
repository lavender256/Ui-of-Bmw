
import 'package:bmw/components/color.dart';
import 'package:bmw/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'footer_column.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) { var size = MediaQuery.of(context).size;
  return Container(  padding: EdgeInsets.symmetric(
      horizontal: size.width * .1, vertical: size.height * .05),
      width: size.width,
      height: size.height*.9,
      color: backColor,
      child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width*.3,
            height: size.height*.07,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    child: Text(
                      'Deutsch',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    )),
                GestureDetector(
                    child: Text(
                      'Italiano',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    )),
                GestureDetector(
                    child: Text(
                      'Français',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    )),
                GestureDetector(
                    child: Text(
                      'Español',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    )),
                GestureDetector(
                    child: Text(
                      'Germany',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    )),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FooterColumn(footerColumnList: quickLinks,title: "Quick List",),
              FooterColumn(footerColumnList: moreAudiWebsites,title: "More BMW WebSites",),
              FooterColumn(footerColumnList: audicom,title: "BMW.com",),
              FooterColumn(footerColumnList: visUsOn,title: "Visit Us on",),
            ],
          ),
          Text("Lavender256",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: mainColor
          ),)
        ],
      )
  );
  }
}
