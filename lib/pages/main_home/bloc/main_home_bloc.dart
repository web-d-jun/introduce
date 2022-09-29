import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_home_event.dart';
part 'main_home_state.dart';

class MainHomeBloc extends Bloc<MainHomeEvent, MainHomeState> {
  MainHomeBloc() : super(const MainHomeState()) {
    on<Init>(_onInit2);
  }

  void _onInit2(Init event, Emitter<MainHomeState> emit) async {
    try {
      print('onit');
    } catch (error) {
      return null;
    }
  }
}
