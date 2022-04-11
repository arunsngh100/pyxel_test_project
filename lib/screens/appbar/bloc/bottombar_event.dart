part of 'bottombar_bloc.dart';

abstract class BottombarEvent extends Equatable {
  const BottombarEvent();

  @override
  List<Object> get props => [];
}

class IndexChangedEvent extends BottombarEvent {
  final int index;

  const IndexChangedEvent({required this.index});

  @override
  List<Object> get props => [index];
}
