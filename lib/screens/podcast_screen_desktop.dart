
import 'package:bmw/model/podcast.dart';
import 'package:bmw/widget/footer.dart';
import 'package:bmw/widget/how_does_this_sound.dart';
import 'package:bmw/widget/how_show_responbility_podcast_screen.dart';
import 'package:bmw/widget/info_podcast_desktop.dart';
import 'package:bmw/widget/kyle_bean_podcast_screen.dart';
import 'package:bmw/widget/long_content_podcast_screen.dart';
import 'package:bmw/widget/main_header_podcast.dart';
import 'package:bmw/widget/more_article_podcast_screen.dart';
import 'package:flutter/material.dart';

class PodCastScreenDesktop extends StatefulWidget {
  final PodCast podcast;

  PodCastScreenDesktop({this.podcast});

  @override
  _PodCastScreenDesktopState createState() => _PodCastScreenDesktopState();
}

class _PodCastScreenDesktopState extends State<PodCastScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            MainHeaderPodCast(podcast: widget.podcast),
            InfoPodcastDesktop(podcast: widget.podcast),
            HowDoesThisSound(),
            LongContentPodcastScreen(),
            KyleBeanPodcastScreen(),
            HowBMWShowsResponsibility(),
            MoreArticlePodCastScreen(),
            Footer()
          ],
        ),
      ),
    );
  }
}
