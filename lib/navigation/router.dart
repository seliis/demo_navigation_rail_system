import "package:demo_navigation_rail_system/ui/views/_index.dart" as views;
import "package:demo_navigation_rail_system/ui/master_screen.dart";
import "package:go_router/go_router.dart";

enum Address {
  home(route: views.Home.route),
  user(route: views.User.route);

  const Address({
    required this.route,
  });

  final String route;
}

final routerConfig = GoRouter(
  initialLocation: views.Home.route,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MasterScreen(child: child);
      },
      routes: [
        GoRoute(
          path: views.Home.route,
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const views.Home());
          },
        ),
        GoRoute(
          path: views.User.route,
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const views.User());
          },
        ),
      ],
    ),
  ],
);
