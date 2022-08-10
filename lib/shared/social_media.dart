import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SocialMediaHorizontal extends StatelessWidget {
  const SocialMediaHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[ 
        IconSocialMedia(
          icon: const Icon(FontAwesomeIcons.instagram),
          onPressed: () {},
        ),
        const SizedBox(width: 5),
        IconSocialMedia(
          icon: const Icon(FontAwesomeIcons.twitter),
          onPressed: () {},
        ),
      ],
    );
  }
}
class IconSocialMedia extends StatelessWidget {
  const IconSocialMedia({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final Icon icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      color: const Color(0xffCDFF00),
      onPressed: () => onPressed(),
    );
  }
}