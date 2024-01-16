import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_sexmode/config/items_menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 static const String name = "home_screen";



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter + Material 3"),
      ),
      body: const _Homeview(),
    );
  }
}

class _Homeview extends StatelessWidget {
  const _Homeview();

  @override
  Widget build(BuildContext context){


    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuitem = appMenuItems[index];
        return _CustomListTile(menuitem: menuitem);
      },
      );
  } 
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuitem,
  });

  final MenuItem menuitem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return ListTile(
      leading: Icon(menuitem.icon,color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color:colors.primary, ),
      title: Text(menuitem.title),
      subtitle: Text(menuitem.subtittle),
      onTap: () {

        //Navegador HomeScreen
        context.push(menuitem.link);




        // Navigator.of(context).push(MaterialPageRoute(
          // builder:(context) => const ButtonsScreen() ));
      },
      
    );
  }
}