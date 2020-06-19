import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import '../models/user.dart';
import '../models/products.dart';
import '../models/category.dart';

class Api {
  static const endpoint = 'http://staging.php-dev.in:8844/trainingapp/api';

  var client = new http.Client();

  Future<User> getUserProfile(String userName, String password) async {
   // Map<String, dynamic> param = {'email': 'reva09@gmail.com', 'password': '123456'};
    Map<String, dynamic> param = {'email': userName, 'password': password};

    var parameters = encodeMap(param);
    final encoding = Encoding.getByName('utf-8');

    print('hgfytgy testtt $param');

    var apiUrl = '$endpoint/users/login';
    final headers = {'Content-Type': 'application/x-www-form-urlencoded'};

    var response = await client.post(apiUrl,
      headers: headers,
      body: parameters,
      encoding: encoding,
    );
    print('gfdhtf ${response.body}');
    return userFromJson(response.body);
  }



  Future<List<Category>> getCategoryList() async{
    var categoryList = List<Category>();
    List<Category> _items = [
      Category(
        id: 1,
        title: 'Tables',
        imgLink: 'assets/images/tableicon.png',
      ),
      Category(
        id: 3,
        title: 'Sofas',
        imgLink: 'assets/images/sofaicon.png',
      ),
      Category(
        id: 2,
        title: 'Chairs',
        imgLink: 'assets/images/chairsicon.png',
      ),
      Category(
        id: 4,
        title: 'Cupboard',
        imgLink: 'assets/images/cupboardicon.png',
      ),
    ];

    categoryList = [..._items];
    return categoryList;
  }


  Future<List<ProductsData>> fetchProductList(int prodID) async{
    var productList = List<ProductsData>();

    var apiUrl = '$endpoint/products/getList?product_category_id=$prodID';
    var response = await client.get(apiUrl);
    var parsed =  productsListFromJson(response.body);

    for (var post in parsed.result) {
      productList.add(post);
    }

    return productList;
  }

}

//encode parameters
  String encodeMap(Map data) {
    return data.keys.map((key) => "${Uri.encodeComponent(key)}=${Uri.encodeComponent(data[key])}").join("&");
  }


