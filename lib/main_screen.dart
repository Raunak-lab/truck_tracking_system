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
    return LayoutBuilder(builder: (context,constraints)
    {
      if (constraints.maxWidth < 500) {
        return mobileScaffold;
      }
      else {
          return desktopScaffold;
      }
    },);
  }
}
