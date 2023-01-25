import 'package:e_commerce/models/category_model.dart';
import 'package:e_commerce/models/discount_model.dart';

class Product {
  int id;
  String name;
  String desc;
  String sku;
  Category category;
  double price;
  Discount discount;
  String createdAt;
  String? modifiedAt;

  Product(this.id, this.name, this.desc, this.sku, this.category, this.price,
      this.discount, this.createdAt, [this.modifiedAt]);

  @override
  String toString() {
    return "$name: $price";
  }
}