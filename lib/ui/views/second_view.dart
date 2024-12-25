import "package:flutter/material.dart";

final class SecondView extends StatelessWidget {
  const SecondView({super.key});

  static const String route = "/second";

  @override
  Widget build(context) {
    return const Center(
      child: Text("Second View"),
    );
  }
}
