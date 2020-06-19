import 'dart:convert';

ProductDetails productDetailsFromJson(String str) => ProductDetails.fromJson(json.decode(str));

String productDetailsToJson(ProductDetails data) => json.encode(data.toJson());

class ProductDetails {
  ProductDetails({
    this.status,
    this.result,
  });

  int status;
  List<ProductDetailsData> result;

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
    status: json["status"],
    result: List<ProductDetailsData>.from(json["data"].map((x) => ProductDetailsData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class ProductDetailsData {
  ProductDetailsData({
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
  List<ProductImage> productImages;

  factory ProductDetailsData.fromJson(Map<String, dynamic> json) => ProductDetailsData(
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
    productImages: List<ProductImage>.from(json["product_images"].map((x) => ProductImage.fromJson(x))),
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
    "product_images": List<dynamic>.from(productImages.map((x) => x.toJson())),
  };
}

class ProductImage {
  ProductImage({
    this.id,
    this.productId,
    this.image,
    this.created,
    this.modified,
  });

  int id;
  int productId;
  String image;
  String created;
  String modified;

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
    id: json["id"],
    productId: json["product_id"],
    image: json["image"],
    created: json["created"],
    modified: json["modified"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "image": image,
    "created": created,
    "modified": modified,
  };
}
