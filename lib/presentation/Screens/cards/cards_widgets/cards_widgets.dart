import 'package:flutter/material.dart';

class Tarjeta{
  final String nombre;
  final String ocupacion;
  final String estado;
  final IconData icon;


  const Tarjeta({required this.nombre, required this.ocupacion, required this.estado, required this.icon,});

}

const tarjetaMenu = <Tarjeta>[
  Tarjeta(
  nombre: "Gustavo", 
  ocupacion: "Programador",
  estado: "/Gustavogey", 
  icon: Icons.elderly_woman_rounded,
  ),

    Tarjeta(
  nombre: "Benito", 
  ocupacion: "Tocador de Mujeres",
  estado: "/cards", 
  icon: Icons.sports_mma_rounded,
  ),

  Tarjeta(
  nombre:"Ramon", 
  ocupacion: "Acosador de Menores",
  estado: "/tickets", 
  icon: Icons.child_friendly_rounded),  
  
];
