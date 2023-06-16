import 'package:flutter/material.dart';
import 'package:truck_tracking_system/desktop_scaffold.dart';
import 'package:truck_tracking_system/mobile_scaffold.dart';

import 'main_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: MainScreen(
          mobileScaffold: MobileScaffold(),
          desktopScaffold: DesktopScaffold(),
        ),
    );
  }
}
