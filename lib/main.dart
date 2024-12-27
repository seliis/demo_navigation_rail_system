import "package:demo_navigation_rail_system/dependency_injector.dart";
import "package:demo_navigation_rail_system/ui/router.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    DependencyInjector(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        routerConfig: routerConfig,
      ),
    ),
  );
}
