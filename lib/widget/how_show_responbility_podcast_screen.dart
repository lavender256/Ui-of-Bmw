import 'package:flutter/material.dart';

class HowBMWShowsResponsibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .075, vertical: size.height * .1),
      width: size.width,
      color: Colors.white,
      child: Container(
        width: size.width*.8,
        height: size.height*.7,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.postimg.cc/nzJxt7gC/responsibility.jpg"),fit: BoxFit.cover
          )
        ),
child: Stack(
  children: [
    Positioned(
        left: size.width*.031,
        top: size.width*.015,
        child: Container(
        width: size.width*.4,
          height: size.height*.25,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("How BMW Shows\nResponsibility".toUpperCase(),style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.w400,fontSize: size.width*.03
              ),),
              Container(
                width: size.width*.15,
                height: size.height*.07,
                color: Colors.blue[900],
                child: Center(child: Text("Find out more",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w700,letterSpacing: 1.2
                ),),),
              )
            ],
          ),
        ),
    )
  ],
),
      ),
    );
  }
}
