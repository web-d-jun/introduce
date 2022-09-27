import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_home_event.dart';
part 'main_home_state.dart';

class MainHomeBloc extends Bloc<MainHomeEvent, MainHomeState> {
  MainHomeBloc() : super(MainHomeInitial()) {
    on<MainHomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
