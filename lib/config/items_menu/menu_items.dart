import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subtittle;
  final String link;
  final IconData icon;


  const MenuItem({
    required this.title, 
    required this.subtittle, 
    required this.link, 
    required this.icon, });

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
  link: "/card", 
  icon: Icons.credit_card,
  ),
  
];
