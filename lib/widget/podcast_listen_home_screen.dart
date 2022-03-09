import 'package:bmw/components/color.dart';
import 'package:bmw/data/data.dart';
import 'package:bmw/model/podcast.dart';
import 'package:bmw/widget/podcast_card.dart';
import 'package:bmw/widget/podcast_info.dart';
import 'package:flutter/material.dart';

class PodCastListenHomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return   Container(
      color: backColor,
      height: size.height * .62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PodCastInfo(),
          Expanded(
            child: Container(
              height: size.height * .5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: podcastList.length,
                  itemBuilder: (BuildContext context, int index) {
                    PodCast podcast = podcastList[index];
                    return PodCastCard(
                      podcast: podcast,
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
