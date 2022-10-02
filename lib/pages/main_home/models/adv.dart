import 'package:equatable/equatable.dart';
import 'package:flutter/src/widgets/container.dart';

class Adv extends Equatable {
  const Adv(this.imgList);
  final List<String> imgList;

  @override
  List<Object> get props => [];
  static const empty = Adv([]);
}
