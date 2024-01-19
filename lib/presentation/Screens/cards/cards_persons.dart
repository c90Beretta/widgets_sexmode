import 'package:flutter/material.dart';
import 'package:widgets_sexmode/presentation/Screens/cards/cards_screens.dart';
import 'package:widgets_sexmode/presentation/Screens/home/home_screen.dart';
import 'cards_widgets/cards_widgets.dart';

class Personas extends StatelessWidget {

  const Personas({super.key});

  @override
  Widget build(BuildContext context) {
  final colors = Theme.of(context).colorScheme;


    return  Scaffold(
      appBar: AppBar(
        title: const Text("Volver"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: colors.primary,
          onPressed: () {
             Navigator.of(context).pop(
            MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        )),
        body: const PerfilScreen(),
    );
  }
}


class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.chat,
              size: 30,
            ),
          ),
          title:  Text("Perfil de ${tarjetaMenu.length}"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black)),
      body: const Placeholder(),
    );
  }
}