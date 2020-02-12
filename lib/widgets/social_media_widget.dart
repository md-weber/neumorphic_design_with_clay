import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';

class SocialMediaWidget extends StatelessWidget {
  final Color baseColor;

  const SocialMediaWidget({Key key, this.baseColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      color: baseColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClayContainer(
              color: baseColor,
              borderRadius: 30.0,
              child: SocialMediaButton.twitter(
                url: "https://twitter.com/max_myracle",
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClayContainer(
              color: baseColor,
              borderRadius: 30.0,
              child: SocialMediaButton.youtube(
                url: "www.youtube.com/channel/UCgUnLn1FpuHHmO66vn4o1NA",
                color: Color(0xFFFF0000),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClayContainer(
              color: baseColor,
              borderRadius: 30.0,
              child: SocialMediaButton.medium(
                iconData: Icons.developer_mode,
                url: "https://dev.to/",
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
