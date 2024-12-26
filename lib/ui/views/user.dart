import "package:flutter/material.dart";

final class User extends StatelessWidget {
  const User({super.key});

  static const String route = "/user";

  @override
  Widget build(context) {
    return const Center(
      child: Text("User"),
    );
  }
}
