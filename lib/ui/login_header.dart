import 'package:flutter/material.dart';
import 'shared/test_styles.dart';


class LoginHeader extends StatelessWidget {

  const LoginHeader({
    Key key,
    @required TextEditingController emailController,
    @required TextEditingController passController,
  }) : _emailController = emailController, _passController = passController, super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passController;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
    Padding(
        padding: EdgeInsets.only(bottom: 30),
          child: Text('NeoSTORE', style: headerStyle)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          height: 60.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.white,
                width: 1,
              )),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: _emailController,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: 'User Name',
                border: InputBorder.none),
            keyboardType: TextInputType.emailAddress,

          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          height: 60.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.white,
                width: 1,
              )),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: _passController,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                hintText: 'Password',
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}

