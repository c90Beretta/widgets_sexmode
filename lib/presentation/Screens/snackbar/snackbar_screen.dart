import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = "Snackbar_Screen";

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("Hola Mundo"),
      action: SnackBarAction(label: "ok!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        title: const Text("¿Estás Seguro?"),
        content: const Text("Este OpenDialog es una prueba,\nAmbos Botones Regresaran a la pantalla anterior"),
        actions: [
          TextButton(onPressed: (){ context.pop();}, 
          child: const Text("Cancelar ")),
          FilledButton(onPressed: (){context.pop();}, 
          child: const Text("Aceptar "))

        ],
      ),
    );
  }

  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBars y Dialogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Licencias(),
            const SizedBox(
              height: 10,
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar Dialogo"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar SnackBar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}

class Licencias extends StatelessWidget {
  const Licencias({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
        onPressed: () {
          showAboutDialog(context: context, children: [
            const Text(
                "¿Desea Acceder a nuestro registro de licencias y permisos de Usuarios?")
          ]);
        },
        child: const Text("Licencias Usadas"));
  }
}
