import "package:demo_navigation_rail_system/presenter/master_navigator_presenter.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter/material.dart";

final class DependencyInjector extends StatelessWidget {
  const DependencyInjector({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(context) {
    return _Provider(child: child);
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
        BlocProvider<MasterNavigatorPresenter>(
          create: (context) => MasterNavigatorPresenter(),
        ),
      ],
      child: child,
    );
  }
}
