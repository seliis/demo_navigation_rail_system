import "package:demo_navigation_rail_system/ui/master_navigator.dart";
import "package:flutter/material.dart";

final class MasterScreen extends StatelessWidget {
  const MasterScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(context) {
    return Scaffold(
      body: Row(
        children: [
          MasterNavigator(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
