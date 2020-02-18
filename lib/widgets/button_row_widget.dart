import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_design_with_clay/widgets/clay_button_widget.dart';

class ButtonRowWidget extends StatelessWidget {
  final Color navColor = Color(0xFF2c2c2c);
  final Function onTap;

  ButtonRowWidget({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            GestureDetector(
              onTap: onTap,
              child: Padding(
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
    );
  }
}
