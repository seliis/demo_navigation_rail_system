import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

final class MasterNavigator extends StatefulWidget {
  const MasterNavigator({super.key});

  @override
  State<MasterNavigator> createState() => _MasterNavigatorState();
}

final class _MasterNavigatorState extends State<MasterNavigator> {
  int index = 0;

  @override
  Widget build(context) {
    return NavigationRail(
      selectedIndex: index,
      onDestinationSelected: (value) {
        setState(() {
          index = value;
        });
        _buildPage();
      },
      destinations: [
        NavigationRailDestination(
          icon: Icon(Icons.home),
          label: Text("Home"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.person),
          label: Text("User"),
        ),
      ],
    );
  }

  void _buildPage() {
    switch (index) {
      case 0:
        context.go("/");
      case 1:
        context.go("/user");
      default:
        context.go("/");
    }
  }
}
