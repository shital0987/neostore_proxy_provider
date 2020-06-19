import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../core/constants/app_constants.dart';
import 'login/login_view.dart';
import 'home/home_view.dart';
import '../ui/products/products_list_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeView());

      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => LoginView());

      case RoutePaths.ProductList:
        return MaterialPageRoute(builder: (_) => ProductsListView(settings.arguments));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}