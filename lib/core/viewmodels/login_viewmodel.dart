import 'package:flutter/widgets.dart';
import '../services/authentication_service.dart';
import '../viewmodels/base_model.dart';

class LoginViewModel extends BaseModel {
  AuthenticationService _authenticationService;

  LoginViewModel({
    @required AuthenticationService authenticationService,
  }) : _authenticationService = authenticationService;

  Future<bool> login(String userName, String password) async {
    setBusy(true);
    var success = await _authenticationService.login(userName, password);
    setBusy(success);
    return success;
  }
}