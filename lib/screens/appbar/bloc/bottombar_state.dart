part of 'bottombar_bloc.dart';

abstract class BottombarState extends Equatable {
  const BottombarState();

  @override
  List<Object> get props => [];
}

class BottombarInitial extends BottombarState {}

class PageChangeState extends BottombarState {
  final int index;

  const PageChangeState({required this.index});

  @override
  List<Object> get props => [index];
}
