import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsWidget extends StatelessWidget {
  final Color baseColor = const Color(0xFF464646);
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Subscriber: ",
                          style: GoogleFonts.play(color: Colors.white),
                        ),
                        Text(
                          "240",
                          style: GoogleFonts.play(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Views: ",
                          style: GoogleFonts.play(color: Colors.white),
                        ),
                        Text(
                          "3400",
                          style: GoogleFonts.play(color: Colors.white),
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
    );
  }
}
