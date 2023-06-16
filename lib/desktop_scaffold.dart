import 'package:flutter/material.dart';

import 'constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(defaultPadding*1.5),
        child: Row(
          children: [
            Expanded(flex:2,
                child: Container(
                  height: height,
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                    decoration: const BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child:Column(children: [
                      SizedBox(
                        height: 120,
                        child: DrawerHeader(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset("assets/images/logo.jpg",
                                        height: 100,width: 100),
                                  ),
                                ],

                              ),
                              SizedBox(height: 10,),
                              Text("Main Menu",style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(color: Colors.white70,fontSize: 10),)
                            ],
                          ),
                        ),
                      )
                    ],)
                )
            ),
            Expanded(
                flex: 6,
                child: Container(

                ))
          ],
        ),
      ),
    );
  }
}
