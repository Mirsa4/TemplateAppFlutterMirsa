
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name, //este será el nombre que se mostrará en la url si este proyecto se compila en web. toma el name
      builder: (context, state) => const HomeScreen(),
    ),
   GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
      GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);