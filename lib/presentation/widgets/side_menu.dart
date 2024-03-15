import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_sexmode/config/items_menu/menu_items.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {






  int navDrawerIndex = 0;


  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).padding.top > 35;


    return   NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {

        setState(() {
          navDrawerIndex = value;

        });
        final menuitem = appMenuItems[value];
        context.push(menuitem.link);
        widget.scaffoldKey.currentState?.closeDrawer(); 

      },
      children:  [
        Padding(
          padding:EdgeInsets.fromLTRB(28, hasNotch ? 10: 20, 15, 10),
          child: const Text("Main"), ),


       ...appMenuItems
       .sublist(0,3)
       .map((item) => 
       NavigationDrawerDestination(
      icon:  Icon(item.icon), 
        label:  Text(item.title),)), 

        const Padding(
          padding:EdgeInsets.fromLTRB(28, 10, 15, 10),
          child: 
          Divider()

           ),
        const Padding(
          padding:EdgeInsets.fromLTRB(28, 10, 15, 10),
          child: 
          Text("More Options"), ),

        ...appMenuItems
        .sublist(3,appMenuItems.length)
        .map((item) =>
        NavigationDrawerDestination(
          icon: Icon(item.icon),
          label: Text(item.title),
        )),
      ],
    );
  }
}