import 'package:e_commerce/models/product_model.dart';

class CartItem {
  int id;
  Product product;
  late double total;
  int userId;
  int quantity;
  String createdAt;
  String? modifiedAt;

  CartItem(this.id, this.product, this.quantity, this.userId, this.createdAt, [this.modifiedAt]) {
    total = quantity * product.price;
  }

  @override
  String toString() {
    return 'CartItem{id: $id, product: $product, total: $total, userId: $userId, quantity: $quantity, createdAt: $createdAt, modifiedAt: $modifiedAt}';
  }
}