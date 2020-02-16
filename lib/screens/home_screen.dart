import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_design_with_clay/widgets/social_media_widget.dart';
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ClayContainer(
                        color: baseColor,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                "Statistics: ",
                                style: GoogleFonts.play(
                                  color: Colors.white,
                                  fontSize: 36.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Subscriber: ",
                                          style: GoogleFonts.play(
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "240",
                                          style: GoogleFonts.play(
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Views: ",
                                          style: GoogleFonts.play(
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "3400",
                                          style: GoogleFonts.play(
                                              color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SocialMediaWidget(
                      baseColor: baseColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: navColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClayContainer(
                    color: navColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.skip_previous,
                        size: 54,
                        color: Color(0xFF7B7B7B),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClayContainer(
                    color: navColor,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _controller.play();
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClayContainer(
                          color: navColor,
                          borderRadius: 30.0,
                          child: Icon(
                            Icons.play_arrow,
                            size: 54,
                            color: Color(0xFFFF0000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClayContainer(
                    color: navColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.fast_forward,
                        size: 54,
                        color: Color(0xFF7B7B7B),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClayContainer(
                    color: navColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.skip_next,
                        size: 54,
                        color: Color(0xFF7B7B7B),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
