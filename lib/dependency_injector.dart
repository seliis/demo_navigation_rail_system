import "package:flutter/material.dart";

final class DependencyInjector extends StatelessWidget {
  const DependencyInjector({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(context) {
    return _Provider(
      child: child,
    );
  }
}

final class _Provider extends StatelessWidget {
  const _Provider({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(context) {
    return child;
  }
}
