import 'dart:ui';

import 'package:bmw/model/teaser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridCard extends StatefulWidget {
  final Teaser teaser;
  final bool isTeaser;
  GridCard({this.teaser,this.isTeaser=true});

  @override
  _GridCardState createState() => _GridCardState();
}


class _GridCardState extends State<GridCard> with SingleTickerProviderStateMixin{
  AnimationController controller;
  CurvedAnimation curved;



  bool isHover=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,duration:const Duration(seconds: 7),);
    curved=CurvedAnimation(parent: controller, curve: Curves.fastLinearToSlowEaseIn,);
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      onHover: (val){
        setState(() {
         controller.forward();
         isHover=val;
        });
      },
      child:!isHover?Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.teaser.imageUrl), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
                bottom: size.height * .04,
                left: size.width * .02,
                child: Container(
                  width: size.width * .4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.teaser.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: widget.isTeaser?size.width * .012:size.width*.022,letterSpacing: 1.4),
                      ),
                      SizedBox(height: size.height*.01,),
                      Text(
                        widget.teaser.subtitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize:widget.isTeaser?size.width * .012:size.width*.024),
                      )
                    ],
                  ),
                )),

          ],
        ),
      ): Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.teaser.imageUrl), fit: BoxFit.cover)),
          child: Stack(
            children: [
              FadeTransition(
                opacity: curved,
                child: Positioned(
                  child: Container(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              Positioned(
                  bottom: size.height * .04,
                  left: size.width * .02,
                  child: Container(
                    width: size.width * .4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.teaser.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: widget.isTeaser?size.width * .012:size.width*.022,letterSpacing: 1.4),
                        ),
                        SizedBox(height: size.height*.01,),
                        Text(
                          widget.teaser.subtitle,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:widget.isTeaser?size.width * .012:size.width*.024),
                        )
                      ],
                    ),
                  )),

            ],
          ),
        ),
      );
  }
}
