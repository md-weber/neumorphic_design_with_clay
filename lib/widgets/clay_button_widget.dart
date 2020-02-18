import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';

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
