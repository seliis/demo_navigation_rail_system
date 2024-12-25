import "package:demo_navigation_rail_system/ui/views/_index.dart" as views;
import "package:demo_navigation_rail_system/ui/home.dart";
import "package:go_router/go_router.dart";

enum Address {
  first(route: views.FirstView.route);

  const Address({
    required this.route,
  });

  final String route;
}

final routerConfig = GoRouter(
  initialLocation: views.FirstView.route,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Home(child: child);
      },
      routes: [
        GoRoute(
          path: views.FirstView.route,
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const views.FirstView());
          },
        ),
        GoRoute(
          path: views.SecondView.route,
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const views.SecondView());
          },
        ),
      ],
    ),
  ],
);
