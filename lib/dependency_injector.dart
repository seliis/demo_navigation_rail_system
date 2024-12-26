import "package:flutter/material.dart";

final class DependencyInjector extends StatelessWidget {
  const DependencyInjector({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(context) {
    return child;
  }
}
