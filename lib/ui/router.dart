import "package:demo_navigation_rail_system/ui/views/_index.dart" as views;
import "package:demo_navigation_rail_system/ui/master_screen.dart";
import "package:go_router/go_router.dart";

final routerConfig = GoRouter(
  errorPageBuilder: (context, state) {
    return NoTransitionPage(child: views.NotFound());
  },
  initialLocation: "/",
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MasterScreen(child: child);
      },
      routes: [
        GoRoute(
          path: "/",
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const views.Home());
          },
        ),
        GoRoute(
          path: "/user",
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const views.User());
          },
        ),
      ],
    ),
  ],
);
