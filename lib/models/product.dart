class Product {
  String? title;
  var price;
  String? description;
  String? category;
  String? image;
  Rate? rate;
  Product();
  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rate = Rate.fromJson(json['rating']);
  }
}

class Rate {
  var rate;
  int? count;

  Rate.fromJson(Map<String,dynamic>json){
    rate = json['rate'];
    count = json['count'];
  }
}
