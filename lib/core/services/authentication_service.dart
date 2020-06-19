import 'dart:async';

import '../models/user.dart';
import '../services/api.dart';

class AuthenticationService {
  final Api _api;

  AuthenticationService({Api api}) : _api = api;
  StreamController<User> _userController = StreamController<User>();
  Stream<User> get user => _userController.stream;

  Future<bool> login(String userName, String password) async {
    var fetchedUser = await _api.getUserProfile(userName, password);
    var hasUser = fetchedUser.status == 200;
    if (hasUser) {
      _userController.add(fetchedUser);
    }
    return hasUser;
  }
}