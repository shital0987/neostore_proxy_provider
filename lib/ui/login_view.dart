import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/constants/app_constants.dart';
import '../core/viewmodels/login_viewmodel.dart';
import 'base_widget.dart';
import 'login_header.dart';


class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
        model: LoginViewModel(authenticationService: Provider.of(context)),
        child: LoginHeader(emailController: _emailController, passController: _passController),
        builder: (context, model, child) => Scaffold(
            backgroundColor: Colors.red,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                child,
                model.busy
                    ? CircularProgressIndicator()
                    :  Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius.circular(20)),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                      onPressed: () async {
                        //Navigator.pushReplacementNamed(context, RoutePaths.Home);

                        var loginSuccess = await model.login(_emailController.text, _passController.text);

                        if (loginSuccess) {
                          Navigator.pushReplacementNamed(context, RoutePaths.Home);
                        }else{
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text('Error', textAlign: TextAlign.center,),
                              content: Text('Invalid Username and password!', textAlign: TextAlign.center,),
                              actions: <Widget>[
                                FlatButton(child: Text('Ok'), onPressed: () {
                                  Navigator.of(ctx).pop(false);
                                },),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
                // ),
              ],
            )

        )
    );
  }

  String encodeMap(Map data) {
    return data.keys.map((key) => "${Uri.encodeComponent(key)}=${Uri.encodeComponent(data[key])}").join("&");
  }
}
