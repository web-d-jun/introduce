import 'package:equatable/equatable.dart';

class Adv extends Equatable {
  const Adv(this.imgList);
  final List<String> imgList;

  @override
  List<Object> get props => [];
  static const empty = Adv([]);
}
