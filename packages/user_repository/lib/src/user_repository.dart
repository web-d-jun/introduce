import 'dart:async';

import 'package:user_repository/src/models/models.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;
    await Future.delayed(const Duration(microseconds: 300));
    return _user = User(const Uuid().v4());
  }
}
