import "package:demo_navigation_rail_system/presenter/master_navigator_presenter.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

final class MasterNavigator extends StatelessWidget {
  const MasterNavigator({super.key});

  @override
  Widget build(context) {
    final presenter = context.watch<MasterNavigatorPresenter>();

    return NavigationRail(
      labelType: NavigationRailLabelType.all,
      selectedIndex: presenter.state.index,
      onDestinationSelected: (index) {
        presenter.setIndex(index);
        context.go(index == 0 ? "/first" : "/second");
      },
      destinations: [
        NavigationRailDestination(
          icon: Icon(Icons.folder),
          selectedIcon: Icon(Icons.folder_open),
          label: Text("First"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.folder),
          selectedIcon: Icon(Icons.folder_open),
          label: Text("Second"),
        ),
      ],
    );
  }
}
