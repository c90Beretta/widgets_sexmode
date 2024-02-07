import 'package:go_router/go_router.dart';
import 'package:widgets_sexmode/presentation/Screens/screens.dart';

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
    GoRoute(
      name: ProgresScreen.name,
      path: '/progress',
      builder: (context, state) => const ProgresScreen(),
    ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/tutorial_screen',
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      name: InfiniteScrollScreen.name,
      path: '/infinite_Scroll_Screen',
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
    GoRoute(
      name: SnackBarScreen.name,
      path: '/Snackbar_Screen',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      name: UiControlsScreens.name,
      path: '/UI_Controls_Screen',
      builder: (context, state) => const UiControlsScreens(),
    ),
    GoRoute(
      name: AnimatedScreen.name,
      path: "/animatedscreens",
      builder: (context, state) => const AnimatedScreen(),)
  ],
);
