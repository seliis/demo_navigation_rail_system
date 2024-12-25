import "package:demo_navigation_rail_system/ui/home.dart";
import "package:go_router/go_router.dart";

final routerConfig = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const Home();
      },
    ),
  ],
);
