import "package:flutter/material.dart";

final class FirstView extends StatelessWidget {
  const FirstView({super.key});

  static const String route = "/first";

  @override
  Widget build(context) {
    return const Center(
      child: Text("First View"),
    );
  }
}
