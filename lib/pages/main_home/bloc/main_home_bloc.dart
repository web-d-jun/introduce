import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:introduce/pages/main_home/services/adv.dart';
import 'package:introduce/pages/main_home/models/models.dart';
import 'package:introduce/pages/pages.dart';

part 'main_home_event.dart';
part 'main_home_state.dart';

class MainHomeBloc extends Bloc<MainHomeEvent, MainHomeState> {
  MainHomeBloc()
      : _advRepository = AdvRepository(),
        super(const MainHomeState.initial()) {
    on<Init>(_onInit);
  }
  final AdvRepository _advRepository;

  void _onInit(Init event, Emitter<MainHomeState> emit) async {
    try {
      final imgList = await _tryGetAdv();
      emit(
        imgList != null
            ? MainHomeState.setImgData(imgList: imgList)
            : const MainHomeState.initial(),
      );
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
