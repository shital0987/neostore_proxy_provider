import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:neostoreappflutter/core/constants/app_constants.dart';

import '../products/products_list_view.dart';
import 'package:neostoreappflutter/core/models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({this.category});

  void selectCategory(BuildContext context){
    Navigator.of(context).pushNamed(RoutePaths.ProductList, arguments: CategoryArguments(category.title, category.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context) ,
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        //padding: const EdgeInsets.all(15),
        child: Image.asset(
          category.imgLink,
          fit: BoxFit.fill,
          // fit: BoxFit.cover,
        ),
      ),
    ) ;
  }
}
