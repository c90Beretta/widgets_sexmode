import 'package:go_router/go_router.dart';
import 'package:widgets_sexmode/presentation/Screens/cards/cards_persons.dart';
import 'package:widgets_sexmode/presentation/Screens/cards/cards_screens.dart';
import 'package:widgets_sexmode/presentation/Screens/buttons/buttons_screen.dart';
import 'package:widgets_sexmode/presentation/Screens/home/home_screen.dart';
import 'package:widgets_sexmode/presentation/Screens/tickets/tickets_screen.dart';

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
     GoRoute(
      name: TicketsScreens.name,
      path: '/tickets',
      builder: (context, state) => const TicketsScreens(),
    ),

    //CARDS ROUTES-------------------


    GoRoute(
      path: "/person",
      builder: (context, state) => const Personas(),)





  ],
);