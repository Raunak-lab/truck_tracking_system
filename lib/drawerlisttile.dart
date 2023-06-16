import 'package:flutter/material.dart';

import 'constants.dart';

class DashboardListTile extends StatelessWidget {
  const DashboardListTile(
      {required this.title,
        required this.icon,
        required this.press}
      );
final String title;
final Icon icon;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: textColor,
      textColor: textColor,
      visualDensity: VisualDensity(vertical: -4),
      dense: true,
      onTap: press,
      leading: Icon(icon.icon),
      title:  Text(title),
    );

  }
}
