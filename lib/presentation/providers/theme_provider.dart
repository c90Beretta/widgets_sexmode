import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_sexmode/config/themes/app_theme.dart';


final  darkModeProvider = StateProvider<bool>((ref) => false);


// Lsitado de colores inmutables 
final colorListProvider = Provider((ref) => colorList);