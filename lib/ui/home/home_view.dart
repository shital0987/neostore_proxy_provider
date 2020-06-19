import 'package:flutter/material.dart';
import 'package:neostoreappflutter/core/viewmodels/category_viewmodel.dart';
import 'package:provider/provider.dart';

import 'category_item.dart';
import 'package:neostoreappflutter/ui/side_drawer.dart';
import 'package:neostoreappflutter/ui/base_widget.dart';

import 'package:neostoreappflutter/core/models/category.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<CategoryViewModel>(
      model: CategoryViewModel(api: Provider.of(context)),
      onModelReady: (model){
        model.getCategories();
      },

      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: const Text('NeoStore'),
          centerTitle: true,
        ),
        drawer: SideDrawer(),
        body: model.busy
            ? Center(child: CircularProgressIndicator())
            : Column(
          children: <Widget>[
            Image.asset(
              'assets/images/slider_img1.jpg',
              height: 190,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: buildList(model.categoryList),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildList(List<Category> categoryList) {
    return Container(
        padding: EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryItem(category: categoryList[index],);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:  2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 3/2,
          ),
        ),
      );
  }
}



