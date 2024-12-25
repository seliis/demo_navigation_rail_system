import "package:demo_navigation_rail_system/ui/home.dart";
import "package:demo_navigation_rail_system/ui/page.dart";
import "package:go_router/go_router.dart";

final routerConfig = GoRouter(
  initialLocation: "/first",
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Home(child: child);
      },
      routes: [
        GoRoute(
          path: "/first",
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const FirstPage());
          },
        ),
        GoRoute(
          path: "/second",
          pageBuilder: (context, state) {
            return NoTransitionPage(child: const SecondPage());
          },
        ),
      ],
    ),
  ],
);
