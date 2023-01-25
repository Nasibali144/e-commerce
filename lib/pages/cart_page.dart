import 'dart:svg';

import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/models/order_item_model.dart';
import 'package:e_commerce/models/order_model.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/intro_page.dart';
import 'package:e_commerce/pages/order_page.dart';
import 'package:e_commerce/services/io_service.dart';

class CartPage {
  CartPage() {
    print("Cart Page");
    viewCartPage();
  }

  void viewCartPage() {
    print("0. Exit");
    print("1. Home");
    print("All products: ");
    for(int i = 0; i < cart.carts.length; i++) {
      print("\t${i + 1}. Product: ${cart.carts[i].product}.\tQuantity: ${cart.carts[i].quantity}\tPrice: ${cart.carts[i].total}");
    }
    print("\tTotal: ${cart.total}");
    print("2. Clear Cart");
    print("3. Order");

    int index = (io.number ?? 0).toInt();
    print('\n\n\n');
    if(index == 1) {
      HomePage();
    } else if(index == 0) {
      print("Thank you for attention! Exit!");
      return;
    } else if(index == 2) {
      cart = Cart(cart.id, cart.userId, cart.createdAt, [], DateTime.now().toString());
      viewCartPage();
    } else if(index == 3) {
      List<OrderItem> list = cart.carts.map((element) => OrderItem(element.id, element.product, element.quantity, element.userId, DateTime.now().toString())).toList();
      OrderPage(
        order: Order(01, user.id, cart.total, 01, DateTime.now().toString(), cart.amount, list)
      );
    } else {
      HomePage();
    }
  }
}