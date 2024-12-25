import "package:flutter_bloc/flutter_bloc.dart";

final class MasterNavigatorPresenter extends Cubit<MasterNavigatorState> {
  MasterNavigatorPresenter() : super(const MasterNavigatorState(index: 0));

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
