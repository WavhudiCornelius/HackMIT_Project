import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    @required this.color,
    @required this.iconColor,
    @required this.onTap,
  });

  final Color color;
  final Color iconColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.plus,
            color: iconColor,
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
