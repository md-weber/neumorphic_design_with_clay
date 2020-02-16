import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {
  final Color navColor = const Color(0xFF2C2C2C);

  final Function onTap;

  const PlayerWidget({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                onTap: onTap,
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
    );
  }
}
