import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeItemTapped>(_onItemTapped);
  }

  void _onItemTapped(HomeItemTapped event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        selectedIndex: event.selectedIndex,
      ),
    );
  }
}
