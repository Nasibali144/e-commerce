import 'package:e_commerce/models/product_model.dart';

class OrderItem {
  int id;
  Product product;
  late double total;
  int userId;
  int quantity;
  String createdAt;
  String? modifiedAt;

  OrderItem(this.id, this.product, this.quantity, this.userId, this.createdAt, [this.modifiedAt]) {
    total = quantity * product.price;
  }
}