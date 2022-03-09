
import 'package:bmw/data/teaser_data.dart';
import 'package:bmw/widget/bmw_models_home_screen.dart';
import 'package:bmw/widget/footer.dart';
import 'package:bmw/widget/grid_card.dart';
import 'package:bmw/widget/gridview_teaser_home_screen.dart';
import 'package:bmw/widget/main_header_home_screen.dart';
import 'package:bmw/widget/podcast_listen_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatefulWidget {
  @override
  _HomeScreenDesktopState createState() => _HomeScreenDesktopState();
}

class _HomeScreenDesktopState extends State<HomeScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        child: ListView(
          addAutomaticKeepAlives: false,
          children: <Widget>[
            MainHeaderHomeScreen(),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.width * .002),
              width: size.width,
              height: size.height * .9,
              child: Row(
                children: [
                  Expanded(child: GridCard(teaser: teaserList[14],isTeaser: false,)),
                  SizedBox(width: size.width*.002,),
                  Expanded(child: GridCard(teaser: teaserList[15],isTeaser: false,))
                ],
              ),
            ),
            PodCastListenHomeScreen(),
            BmwModelsHomeScreen(),
            GridViewTeaserHomeScreen(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
