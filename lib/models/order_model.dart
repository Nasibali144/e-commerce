import 'package:e_commerce/models/order_item_model.dart';

class Order {
  int id;
  int userId;
  double total;
  int paymentId;
  List<OrderItem> products;
  int amount;
  String createdAt;
  String? modifiedAt;

  Order(this.id, this.userId, this.total, this.paymentId, this.createdAt,
      this.amount, [this.products = const [], this.modifiedAt]);
}