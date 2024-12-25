import "package:demo_navigation_rail_system/ui/master_navigator.dart";
import "package:flutter/material.dart";

final class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Row(
        children: [
          MasterNavigator(),
          Expanded(
            child: Center(
              child: Text("Home"),
            ),
          ),
        ],
      ),
    );
  }
}
