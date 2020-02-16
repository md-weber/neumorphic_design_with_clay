import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_design_with_clay/widgets/player_widget.dart';
import 'package:neumorphic_design_with_clay/widgets/social_media_widget.dart';
import 'package:neumorphic_design_with_clay/widgets/statistics_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color baseColor = const Color(0xFF464646);
  Color navColor = const Color(0xFF2C2C2C);

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'UC9mgd-gnS0',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
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
              padding: const EdgeInsets.only(top: 50.0),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
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
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ClayContainer(
                        color: baseColor,
                        child: YoutubePlayer(
                          controller: _controller,
                        ),
                      ),
                    ),
                    StatisticsWidget(),
                    SocialMediaWidget(
                      baseColor: baseColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          PlayerWidget(onTap: () {
            setState(() {
              _controller.play();
            });
          })
        ],
      ),
    );
  }
}
