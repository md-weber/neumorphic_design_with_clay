import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsWidget extends StatelessWidget {
  final Color baseColor;

  const StatisticsWidget({Key key, this.baseColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      color: baseColor,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Statistics: ",
              style: GoogleFonts.play(
                fontSize: 36.0,
                color: Colors.white,
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Subscriber: ",
                      style: GoogleFonts.play(color: Colors.white),
                    ),
                    Text(
                      "270",
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
                      "4.241",
                      style: GoogleFonts.play(color: Colors.white),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
