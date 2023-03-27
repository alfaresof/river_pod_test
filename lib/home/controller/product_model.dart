class ProductModel {
  
  String? nameProduct;
  double? size;
  double? price;

  //or we can define it with late
  // late String nameProduct;
  // late double size;
  // late double price;

  ProductModel({
    required this.nameProduct,
    required this.size,
    required this.price,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    nameProduct = json['nameProduct'];
    size = json['size'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nameProduct'] = this.nameProduct;
    data['size'] = this.size;
    data['price'] = this.price;
    return data;
  }
}
