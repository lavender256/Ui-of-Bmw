
import 'package:bmw/components/text.dart';
import 'package:bmw/widget/right_image_content_podcast_screen.dart';
import 'package:bmw/widget/right_long_content_padcast_screen.dart';
import 'package:bmw/widget/speech_content_podcast_screen.dart';
import 'package:flutter/material.dart';
import 'larg_long_content_padcast_screen.dart';
import 'left_long_content_padcast_screen.dart';

class LongContentPodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .15, vertical: size.height * .05),
      width: size.width,
      height: size.height * 10,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftLongContentPodcastScreen(txt: text1),
          LargLongContentPodcastScreen(
              txt: "Inspiration through\n  great leadership"),
          LeftLongContentPodcastScreen(txt: text2),
          RightLongContentPodcastScreen(txt: text3),
          LargLongContentPodcastScreen(
              txt: "BMW and One Young\n              World "),
          LeftLongContentPodcastScreen(
            txt: text4,
          ),
          RightImageContentPodCastScreen(
              content:
                  "A young generation of leaders, emerging to shape the future.",
              imageUrl: "https://i.postimg.cc/pTpNDZwh/media-podcast1.jpg"),
          LargLongContentPodcastScreen(
              txt: "Twenty-seven years of\n     passionate work"),
          RightLongContentPodcastScreen(txt: text5),
          SpeechContentPodcastScreen(
            imageUrl: "https://i.postimg.cc/V6mQdtwp/young-leader1.jpg",
            speech: "We need knowledge to make changes.",
            speecher: "Ilka Horstmeier",
            speecher2: "Member of the Board of Management of BMW AG",
          ),
          RightLongContentPodcastScreen(txt: text6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpeechContentPodcastScreen(
                imageUrl: "https://i.postimg.cc/V6mQdtwp/young-leader1.jpg",
                speech:
                    "Sustainability is not just\n about ecology; it is also\n   about social sustainability.",
                speecher: "Ilka Horstmeier",
                speecher2: "Member of the Board of Management of BMW AG",
              ),
              RightImageContentPodCastScreen(
                  imageUrl: "https://i.postimg.cc/wjvkxGLm/media-podcast2.jpg",
                  content:
                      "BMW focuses on circularity to make individual mobility sustainable in the future."),
            ],
          ),
          RightLongContentPodcastScreen(
            txt: text7,
          ),
          LargLongContentPodcastScreen(
            txt: "Who are the leaders of\n           tomorrow? ",
          ),
          LeftLongContentPodcastScreen(
            txt: text8,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SpeechContentPodcastScreen(
              imageUrl: "https://i.postimg.cc/V6mQdtwp/young-leader1.jpg",
              speech:
                  "No matter where they come from, no matter what problem they are facing, they want to solve it and they do it.",
              speecher: "Ilka Horstmeier",
              speecher2: "Member of the Board of Management of BMW AG",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LeftLongContentPodcastScreen(
                txt: text9,
              ),
              RightImageContentPodCastScreen(
                  imageUrl: "https://i.postimg.cc/SK13N9ny/media-podcast3.jpg",
                  content:
                      "Securing jobs by providing BMW employees with qualifications of future competencies"),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SpeechContentPodcastScreen(
              imageUrl: "https://i.postimg.cc/NfHwLdt5/young-leader2.jpg",
              speech:
              "We only have ONE world, and we need young people who need to be prepared to lead it.",
              speecher: "Kate Robertson",
              speecher2: "Co-founder, One Young World",
            ),
          ),
          LeftLongContentPodcastScreen(txt: text10,),
          LargLongContentPodcastScreen(txt: "Work-life integration ",),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RightImageContentPodCastScreen(
                  imageUrl: "https://i.postimg.cc/SKG8WL6h/media-podcast4.jpg",
                  content:
                  "A customized work environment, ideal for passionate work."),
              RightLongContentPodcastScreen(
                txt: text11,
              ),
            ],
          ),
          Center(child: SpeechContentPodcastScreen(imageUrl: "https://i.postimg.cc/NfHwLdt5/young-leader2.jpg",speech: "Work is a privilege.",speecher: "Kate Robertson",speecher2: "Co-founder, One Young World",))
       ,LeftLongContentPodcastScreen(txt: text12,)
        ],
      ),
    );
  }
}
