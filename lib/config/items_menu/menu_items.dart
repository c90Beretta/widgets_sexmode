import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtittle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtittle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Botones",
    subtittle: "Varios Botones en Flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: "Tarjetas",
    subtittle: "Un Contenedor estilizado",
    link: "/cards",
    icon: Icons.credit_card,
  ),
  MenuItem(
      title: "ProgressIndicator",
      subtittle: "Generales y Especiales",
      link: "/progress",
      icon: Icons.refresh_outlined),
  MenuItem(
      title: "Snackbar y Dialogos",
      subtittle: "SnackBar Y detalles Emergentes",
      link: "/Snackbar_Screen",
      icon: Icons.check_circle_outlined),
  MenuItem(
      title: "Animated",
      subtittle: "AnimatedScreens",
      link: "/animatedscreens",
      icon: Icons.animation_rounded),
  MenuItem(
      title: "UI Controls Screen",
      subtittle: "Widgets de Administracion",
      link: "/UI_Controls_Screen",
      icon: Icons.format_underline_rounded),
  MenuItem(
      title: "App Tutorial",
      subtittle: "Tutorial Apps Screen",
      link: "/tutorial_screen",
      icon: Icons.folder_special_outlined),
  MenuItem(
      title: "Infinite Scroll",
      subtittle: "Scroll Infinito de Imagenes",
      link: "/Infinite_Scroll_Screen",
      icon: Icons.screen_rotation_alt_outlined),
  MenuItem(
      title: "Contador",
      subtittle: "Contador de Operador Simple",
      link: "/counterscreens",
      icon: Icons.numbers_rounded),
  MenuItem(
      title: "Tickets",
      subtittle: "Prueba de Tickets",
      link: "/tickets",
      icon: Icons.airplane_ticket_outlined),
  MenuItem(
      title: "Recordatorio App",
      subtittle: "Agrega Recordatorios",
      link: "/recordatorioscreens",
      icon: Icons.alarm_add_sharp),
  MenuItem(
    title: "Theme Screen", 
    subtittle: "Modificador de Temas", 
    link: "/themescreens", 
    icon: Icons.palette_outlined)
];
