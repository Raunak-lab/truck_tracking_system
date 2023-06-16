import 'package:flutter/material.dart';
import 'package:truck_tracking_system/drawerlisttile.dart';

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
        padding: const EdgeInsets.all(defaultPadding*1.5),
        child: Row(
          children: [
            Expanded(flex:2,
                child: Container(
                  height: height,
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                    decoration: const BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child:Column(children: [
                      SizedBox(
                        height: 80,
                        child: DrawerHeader(
                          padding: const EdgeInsets.only(left: defaultPadding*1.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset("assets/images/logo.jpg",
                                        height: 100,width: 100),
                                  ),
                                ],

                              ),
                              const SizedBox(height: 10,),
                              Text("Main Menu",style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.white70,fontSize: 10),)
                            ],
                          ),
                        ),
                      ),
                       const SizedBox(height: defaultPadding,),
                      Stack(
                        children:[
                        Positioned.fill(child: Expanded(child: Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),),),
                        Container(
                          height:30,width: 5,

                        ),
                        DashboardListTile(
                          title: "Dashboard",
                          icon: const Icon(Icons.grid_view_outlined),
                          press: () {  },

                        ),]
                      ),
                      const SizedBox(height: defaultPadding,),

                      DashboardListTile(
                        title: "Add New Driver",
                        icon: const Icon(Icons.add),
                        press: () {  },

                      ),
                      const SizedBox(height: defaultPadding,),

                      DashboardListTile(
                        title: "Driver Tracking System",
                        icon: const Icon(Icons.fire_truck_rounded),
                        press: () {  },

                      ),
                      const SizedBox(height: defaultPadding,),

                      DashboardListTile(
                        title: "Delivery Status",
                        icon: const Icon(Icons.real_estate_agent),
                        press: () {  },

                      ),
                      const Spacer(),
                      DashboardListTile(
                        title: "Account",
                        icon: const Icon(Icons.person),
                        press: () {  },

                      ),
                      const SizedBox(height: defaultPadding,),
                      DashboardListTile(
                        title: "Settings",
                        icon: const Icon(Icons.settings),
                        press: () {  },

                      ),
                      const SizedBox(height: defaultPadding,),





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

