import "package:flutter/material.dart";

final class Home extends StatelessWidget {
  const Home({super.key});

  static const String route = "/";

  @override
  Widget build(context) {
    return const Center(
      child: Text("Home"),
    );
  }
}
