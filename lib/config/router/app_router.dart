import 'package:go_router/go_router.dart';
import 'package:widgets_sexmode/presentation/Screns/cards/cards_screens.dart';
import 'package:widgets_sexmode/presentation/Screns/home/buttons/buttons_screen.dart';
import 'package:widgets_sexmode/presentation/Screns/home/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      name: CardScreen.name,
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    ),
  ],
);