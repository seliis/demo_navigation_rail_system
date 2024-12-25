import "package:flutter/material.dart";

final class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(context) {
    return const Center(
      child: Text("First Page"),
    );
  }
}

final class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(context) {
    return const Center(
      child: Text("Second Page"),
    );
  }
}
