import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider.dart';

import 'ui/router.dart';
import 'core/constants/app_constants.dart';
import 'ui/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.red,
            accentColor: Colors.grey,
            hintColor: Colors.white,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Lato',
            textTheme: ThemeData.light().textTheme.copyWith(
//           body1: TextStyle(
//              color: Color.fromRGBO(20, 51, 51, 1)
//           ),
//            body2: TextStyle(
//                color: Color.fromRGBO(20, 51, 51, 1)
//            ),
//          title: TextStyle(
//            fontSize: 20,
//            fontFamily: 'Lato',
//            fontWeight: FontWeight.bold
//          )
            )
        ),
        initialRoute: RoutePaths.Login,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}