import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'bottombar_event.dart';
part 'bottombar_state.dart';

class BottombarBloc extends Bloc<BottombarEvent, BottombarState> {
  BottombarBloc() : super(BottombarInitial()) {
    on<BottombarEvent>(
      (event, emit) {
        if (event is IndexChangedEvent) {
          emit(
            PageChangeState(index: event.index),
          );
        }
      },
    );
  }
}
