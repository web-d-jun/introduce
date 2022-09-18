part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeItemTapped extends HomeEvent {
  const HomeItemTapped(this.selectedIndex);

  final int selectedIndex;
  @override
  List<Object> get props => [selectedIndex];
}
