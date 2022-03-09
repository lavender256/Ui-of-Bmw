import 'package:bmw/data/teaser_data.dart';
import 'package:flutter/material.dart';

import 'grid_card.dart';

class MoreArticlePodCastScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {   var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .075, vertical: size.height * .1),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("More articles",style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.w400,fontSize: size.width*.022,letterSpacing: 1.2
          ),),
          SizedBox(height: size.height*.05,),
          Container(
            width: size.width,
            height: size.height*.5,
            color: Colors.red,
          child: Row(
            children: [
              Expanded(child: GridCard(teaser: teaserList[10],)),
              Expanded(child: GridCard(teaser: teaserList[5],)),
              Expanded(child: GridCard(teaser: teaserList[8],))
            ],
          ),
          )
        ],
      ),
    );
  }
}
