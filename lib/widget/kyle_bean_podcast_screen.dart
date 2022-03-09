
import 'package:bmw/components/color.dart';
import 'package:bmw/components/text.dart';
import 'package:flutter/material.dart';

class KyleBeanPodcastScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {  var size = MediaQuery.of(context).size;
    return Container(  padding: EdgeInsets.symmetric(
        horizontal: size.width * .15, vertical: size.height * .05),
      color: backColor,
      width: size.width,
      height: size.height*1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("This is Kyle Bean".toUpperCase(),style: TextStyle(
            color: Colors.white,fontSize: size.width*.05
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              width: size.width*.4,
              height: size.height*.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://i.postimg.cc/VsZqGF3s/kyle-bean.jpg"),fit: BoxFit.cover
                  )
              ),
            ),
              Container(width: size.width*.3,height: size.height*.5,
              child: Align(alignment: Alignment.centerRight,
                child: Text(text13,style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w500,fontSize: size.width*.0105,letterSpacing: 1.1,wordSpacing: 1.5
                ),),
              ),)
          ],)

        ],
      ),
    );
  }
}
