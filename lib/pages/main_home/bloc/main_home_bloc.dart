import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:introduce/pages/main_home/services/adv.dart';
import 'package:introduce/pages/main_home/models/models.dart';

part 'main_home_event.dart';
part 'main_home_state.dart';

class MainHomeBloc extends Bloc<MainHomeEvent, MainHomeState> {
  MainHomeBloc()
      : _advRepository = AdvRepository(),
        super(const MainHomeState()) {
    on<Init>(_onInit);
  }
  final AdvRepository _advRepository;

  void _onInit(Init event, Emitter<MainHomeState> emit) async {
    try {
      print('onit');
      final imgList = await _tryGetAdv();
      print('$imgList imgListimgList');
    } catch (error) {
      return null;
    }
  }

  Future<Adv?> _tryGetAdv() async {
    try {
      final imgList = await _advRepository.getAdv();
      return imgList;
    } catch (_) {
      return null;
    }
  }
}
