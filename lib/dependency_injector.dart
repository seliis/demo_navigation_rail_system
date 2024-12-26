import "package:demo_navigation_rail_system/ui/master_navigator.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<MasterNavigatorCubit>(
          create: (context) => MasterNavigatorCubit(),
        ),
      ],
      child: child,
    );
  }
}
