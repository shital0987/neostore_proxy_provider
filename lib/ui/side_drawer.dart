import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_constants.dart';
import '../ui/products/products_list_view.dart';


class SideDrawer extends StatelessWidget {

  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
                color: Theme
                    .of(context)
                    .primaryColor,
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60.0),
                      child: Image.network(
                        'http://staging.php-dev.in:8844/trainingapp/uploads/prod_img/thumb/medium/f1a9bb656cf42017358655107.jpg',
                        height: 120.0,
                        width: 120.0,
                        fit: BoxFit.fill,
                      ),
                    ),

                    Text(
                      'Shital B',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'test@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                         color: Colors.white
                      ),
                    ),
                  ],
                )

            ),

            buildListTile(
                'Home',
                Icons.home,
                    () {
                  Navigator.of(context).pushReplacementNamed(RoutePaths.Home);
                }
            ),
            buildListTile(
                'Tables',
                Icons.table_chart,
                    () {
                  Navigator.of(context).popAndPushNamed(RoutePaths.Home);
                  Navigator.of(context).pushNamed(RoutePaths.ProductList, arguments: CategoryArguments('Tables', 1));
                }
            ),
            buildListTile(
                'Sofas',
                Icons.folder,
                    () {
                  Navigator.of(context).popAndPushNamed(RoutePaths.Home);
                  Navigator.of(context).pushNamed(RoutePaths.ProductList, arguments: CategoryArguments('Sofas', 3));
                }
            ),
            buildListTile(
                'Chairs',
                Icons.folder,
                    () {
                  Navigator.of(context).popAndPushNamed(RoutePaths.Home);
                  Navigator.of(context).pushNamed(RoutePaths.ProductList, arguments: CategoryArguments('Chairs', 2));
                }
            ),
            buildListTile(
                'Cupboard',
                Icons.folder,
                    () {
                  Navigator.of(context).popAndPushNamed(RoutePaths.Home);
                  Navigator.of(context).pushNamed(RoutePaths.ProductList, arguments: CategoryArguments('Cupboard', 4));
                }
            ),

          ],
        ),
      ),
    );
  }
}