import "package:demo_navigation_rail_system/presenter/master_navigator_presenter.dart";
import "package:demo_navigation_rail_system/navigation/router.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:flutter/material.dart";

final class MasterNavigator extends StatelessWidget {
  const MasterNavigator({super.key});

  @override
  Widget build(context) {
    final presenter = context.watch<MasterNavigatorPresenter>();

    return NavigationRail(
      labelType: NavigationRailLabelType.all,
      selectedIndex: presenter.state.index,
      onDestinationSelected: (index) {
        context.go(Address.values[index].route);
        presenter.setIndex(index);
      },
      destinations: Address.values.map(
        (address) {
          return NavigationRailDestination(
            icon: Icon(Icons.folder),
            selectedIcon: Icon(Icons.folder_open),
            label: Text(address.route),
          );
        },
      ).toList(),
    );
  }
}
