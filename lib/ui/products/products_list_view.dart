import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:neostoreappflutter/core/viewmodels/products_list_viewmodel.dart';
import 'package:neostoreappflutter/ui/base_widget.dart';
import 'package:neostoreappflutter/core/models/products.dart';

import '../products/products_list_item.dart';

class ProductsListView extends StatefulWidget {
  final CategoryArguments args;
  ProductsListView(this.args);

  @override
  _ProductsListViewState createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  @override
  Widget build(BuildContext context) {

    return BaseWidget<ProductsListViewModel>(
        model: ProductsListViewModel(api: Provider.of(context)),
        onModelReady: (model){

          model.getProductsList(widget.args.categoryId);
        },
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(title: Text(widget.args.categoryName),
          ),
          body: model.busy
              ? Center(child: CircularProgressIndicator())
              :  buildList(model.productsList),
        )
    );
  }


  Widget buildList(List<ProductsData> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductListItem(product: products[index],);
      },
    );
  }

}

class CategoryArguments {
  String categoryName;
  int categoryId;
  CategoryArguments(this.categoryName ,this.categoryId);
}
