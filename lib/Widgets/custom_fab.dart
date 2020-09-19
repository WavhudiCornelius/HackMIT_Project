import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({this.onTap});

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}
