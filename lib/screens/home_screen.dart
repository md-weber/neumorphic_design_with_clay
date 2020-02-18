import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_design_with_clay/widgets/button_row_widget.dart';
import 'package:neumorphic_design_with_clay/widgets/statistics_widget.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Color baseColor = Color(0xFF464646);

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'RpbM_Sv7tag',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 80,
                left: 30.0,
                right: 30,
                bottom: 30.0,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Neumorphic Youtube Player",
                    style: GoogleFonts.play(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: Colors.grey,
                      endIndent: 20.0,
                      indent: 20.0,
                    ),
                  ),
                  Text(
                    "Flutter Explained",
                    style: GoogleFonts.play(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 10,
                    ),
                    child: ClayContainer(
                      color: baseColor,
                      child: YoutubePlayer(
                        controller: _controller,
                      ),
                    ),
                  ),
                  StatisticsWidget(
                    baseColor: baseColor,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClayContainer(
                    color: baseColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: ClayContainer(
                            child: SocialMediaButton.twitter(
                              iconData: FeatherIcons.twitter,
                              color: Colors.blue,
                              url: "https://twitter.com/max_myracle",
                            ),
                            borderRadius: 30,
                            color: baseColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: ClayContainer(
                            child: SocialMediaButton.youtube(
                              iconData: FeatherIcons.youtube,
                              color: Colors.red,
                              url:
                                  "https://www.youtube.com/channel/UCgUnLn1FpuHHmO66vn4o1NA",
                            ),
                            borderRadius: 30,
                            color: baseColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: ClayContainer(
                            child: SocialMediaButton.medium(
                              color: Colors.blue,
                              url: "https://twitter.com/max_myracle",
                            ),
                            borderRadius: 30,
                            color: baseColor,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ButtonRowWidget(
            onTap: () {
              setState(() {
                _controller.play();
              });
            },
          ),
        ],
      ),
    );
  }
}
