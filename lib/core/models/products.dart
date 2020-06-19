import 'dart:convert';

ProductsList productsListFromJson(String str) => ProductsList.fromJson(json.decode(str));

String productsListToJson(ProductsList data) => json.encode(data.toJson());

class ProductsList {
  ProductsList({
    this.status,
    this.result,
  });

  int status;
  // List<Datum> data;
  List<ProductsData> result = [];

  factory ProductsList.fromJson(Map<String, dynamic> json) => ProductsList(
    status: json["status"],
    result: List<ProductsData>.from(json["data"].map((x) => ProductsData.fromJson(x))),


  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class ProductsData {
  ProductsData({
    this.id,
    this.productCategoryId,
    this.name,
    this.producer,
    this.description,
    this.cost,
    this.rating,
    this.viewCount,
    this.created,
    this.modified,
    this.productImages,
  });

  int id;
  int productCategoryId;
  String name;
  String producer;
  String description;
  int cost;
  int rating;
  int viewCount;
  String created;
  String modified;
  String productImages;

  factory ProductsData.fromJson(Map<String, dynamic> json) => ProductsData(
    id: json["id"],
    productCategoryId: json["product_category_id"],
    name: json["name"],
    producer: json["producer"],
    description: json["description"],
    cost: json["cost"],
    rating: json["rating"],
    viewCount: json["view_count"],
    created: json["created"],
    modified: json["modified"],
    productImages: json["product_images"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_category_id": productCategoryId,
    "name": name,
    "producer": producer,
    "description": description,
    "cost": cost,
    "rating": rating,
    "view_count": viewCount,
    "created": created,
    "modified": modified,
    "product_images": productImages,
  };
}
