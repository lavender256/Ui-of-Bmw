import 'package:flutter/material.dart';

class RightImageContentPodCastScreen extends StatelessWidget {

  final String imageUrl;
  final String content;

  RightImageContentPodCastScreen({this.imageUrl, this.content});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: size.width*.31,
        height: size.height*.7,
        child: Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:[
            Container(
              width: size.width*.31,
              height: size.height*.66,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageUrl),fit: BoxFit.cover
                  )
              ),
            ),
            Text(content,style:TextStyle(
              color:Colors.black,fontWeight: FontWeight.w700
                ,fontSize: size.width*.008
            ))
          ]
        ),
      ),
    );
  }
}
