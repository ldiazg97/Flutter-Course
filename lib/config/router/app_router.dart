import 'package:go_router/go_router.dart';

import '../../presentations/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/cards', builder: (context, state) => const CardsScreens()),
    GoRoute(
      path: '/buttoms',
      builder: (context, state) => const ButtomsScrenn(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
  ],
);
