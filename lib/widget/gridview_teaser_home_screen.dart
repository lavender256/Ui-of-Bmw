
import 'package:bmw/data/teaser_data.dart';
import 'package:bmw/model/teaser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'grid_card.dart';

class GridViewTeaserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      height: size.height * 4.6,
      child: StaggeredGridView.countBuilder(
        physics: NeverScrollableScrollPhysics(),
        staggeredTileBuilder: (index) => index % 4 == 0
            ? StaggeredTile.count(2, 2)
            : StaggeredTile.count(2, 1),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 4,
        itemCount: teaserList.length-2,
        itemBuilder: (context, index) {
          Teaser teaser = teaserList[index];
          return GridCard(
            teaser: teaser,
          );
        },
      ),
    );
  }
}
