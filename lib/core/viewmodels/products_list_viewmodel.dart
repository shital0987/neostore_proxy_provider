import 'package:flutter/material.dart';

import 'package:neostoreappflutter/core/viewmodels/base_model.dart';
import '../services/api.dart';
import '../models/products.dart';

class ProductsListViewModel extends BaseModel{

  Api _api;

  ProductsListViewModel({
    @required Api api,
  }) : _api = api;

  List<ProductsData> productsList;

  Future getProductsList(int productCategoryId) async {
    setBusy(true);
    productsList = await _api.fetchProductList(productCategoryId);
    setBusy(false);
  }

//  Future getproductDetails() async{
//    setBusy(true);
//
//  }

}