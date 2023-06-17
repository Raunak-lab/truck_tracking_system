import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';
import 'desktop_scaffold.dart';

class MainScreen extends StatelessWidget {

  final Widget mobileScaffold;
  final Widget desktopScaffold;
  const MainScreen({super.key,
    required this.mobileScaffold,
    required this.desktopScaffold
});



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
      if (screenWidth < 900) {
        return mobileScaffold;
      }
      else {
          return desktopScaffold;
      }

  }
}
