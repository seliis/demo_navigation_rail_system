import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:flutter/material.dart";

final class MasterNavigatorCubit extends Cubit<MasterNavigatorState> {
  MasterNavigatorCubit() : super(const MasterNavigatorState(index: 0));

  void setIndex(int index) {
    emit(MasterNavigatorState(index: index));
  }
}

final class MasterNavigatorState {
  const MasterNavigatorState({
    required this.index,
  });

  final int index;
}

final class MasterNavigator extends StatelessWidget {
  const MasterNavigator({super.key});

  @override
  Widget build(context) {
    final cubit = context.read<MasterNavigatorCubit>();

    int getIndex() {
      switch (GoRouter.of(context).state?.path) {
        case "/":
          cubit.setIndex(0);
        case "/user":
          cubit.setIndex(1);
        default:
          cubit.setIndex(0);
      }

      return cubit.state.index;
    }

    return NavigationRail(
      selectedIndex: getIndex(),
      onDestinationSelected: (int index) {
        switch (index) {
          case 0:
            context.go("/");
          case 1:
            context.go("/user");
          default:
            context.go("/");
        }
      },
      destinations: [
        NavigationRailDestination(
          icon: Icon(Icons.home),
          label: Text("Home"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.person),
          label: Text("User"),
        ),
      ],
    );
  }
}
