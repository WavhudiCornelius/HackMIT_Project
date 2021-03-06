import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    @required this.buttonColor,
    @required this.buttonSize,
    @required this.iconColor,
    @required this.iconSize,
    @required this.onTap,
  });

  final Color buttonColor;
  final double buttonSize;
  final Color iconColor;
  final double iconSize;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        child: Center(
          child: Icon(
            FeatherIcons.plus,
            color: iconColor,
            size: iconSize,
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: buttonColor.withOpacity(0.4),
              offset: Offset(4, 4),
              blurRadius: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
