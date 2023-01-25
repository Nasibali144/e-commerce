import 'package:e_commerce/models/cart_item_model.dart';

class Cart {
  int id;
  List<CartItem> carts;
  late double total;
  int userId;
  late int amount;
  String createdAt;
  String? modifiedAt;

  Cart(this.id, this.userId, this.createdAt, this.carts, [this.modifiedAt]) {
    amount = carts.length;
    total = carts.fold(0, (previousValue, element) => previousValue + element.total);
  }

  @override
  String toString() {
    return 'Cart{id: $id, carts: $carts, total: $total, userId: $userId, amount: $amount, createdAt: $createdAt, modifiedAt: $modifiedAt}';
  }
}