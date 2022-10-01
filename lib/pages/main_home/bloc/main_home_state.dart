part of 'main_home_bloc.dart';

class MainHomeState extends Equatable {
  const MainHomeState._({this.imgData = Adv.empty});

  const MainHomeState.initial() : this._(imgData: Adv.empty);
  const MainHomeState.setImgData({required Adv imgList}) : this._(imgData: imgList);

  final Adv imgData;

  @override
  List<Object> get props => [imgData];
}

// class MainHomeInitial extends MainHomeState {}
