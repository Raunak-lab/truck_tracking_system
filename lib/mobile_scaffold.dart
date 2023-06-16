import 'package:flutter/material.dart';

import 'constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu_rounded,
            color: secondaryColor,),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),

      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30),topRight: Radius.circular(30),bottomLeft: Radius.circular(30))
        ),
          child: Row(
            children: [
              Expanded(flex:2,
                  child: Container(
                    height: height,
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child:Column(children: [
                        SizedBox(
                          height: 100,
                          child: DrawerHeader(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset("assets/images/logo.jpg",
                                          height: 50,width: 50),
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

            ],
          ),


      ),
    );
  }
}
