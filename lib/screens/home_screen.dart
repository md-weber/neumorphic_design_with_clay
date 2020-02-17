import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Color baseColor = Color(0xFF464646);
  Color navColor = Color(0xFF2c2c2c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Column(
        children: <Widget>[
          Expanded(child: Column()),
          Container(
            color: navColor,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClayButtonWidget(
                    baseColor: navColor,
                    iconData: Icons.fast_rewind,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClayContainer(
                      color: navColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClayContainer(
                          color: navColor,
                          borderRadius: 50,
                          child: Icon(
                            Icons.play_arrow,
                            size: 62,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClayButtonWidget(
                    baseColor: navColor,
                    iconData: Icons.fast_forward,
                  ),
                  ClayButtonWidget(
                    baseColor: navColor,
                    iconData: Icons.skip_next,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ClayButtonWidget extends StatelessWidget {
  const ClayButtonWidget({
    Key key,
    @required this.baseColor,
    this.iconData,
    this.size = 62,
  }) : super(key: key);

  final Color baseColor;
  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClayContainer(
        color: baseColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            iconData,
            size: size,
            color: Color(0xFF7b7b7b),
          ),
        ),
      ),
    );
  }
}
