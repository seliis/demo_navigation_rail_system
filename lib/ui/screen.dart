import "package:demo_navigation_rail_system/ui/custom_navigator.dart";
import "package:flutter/material.dart";

final class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(context) {
    return Scaffold(
      body: Row(
        children: [
          CustomNavigator(
            items: items,
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
