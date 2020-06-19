import 'package:flutter/material.dart';
import 'package:neostoreappflutter/core/viewmodels/base_model.dart';

import '../models/category.dart';
import '../services/api.dart';

class CategoryViewModel extends BaseModel{

  Api _api;

  CategoryViewModel({
    @required Api api,
  }) : _api = api;

  List<Category> categoryList;

  Future getCategories() async {
    setBusy(true);
    categoryList = await _api.getCategoryList();
    setBusy(false);
  }

}