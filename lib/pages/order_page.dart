import 'package:e_commerce/models/order_model.dart';
import 'package:e_commerce/models/payment_model.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/services/io_service.dart';

class OrderPage {
  Order order;
  late Payment payment;
  OrderPage({required this.order}) {
    payment = Payment(order.paymentId, order.id, "none", "no-paid", DateTime.now().toString());
    print("Order Page");
  }

  void viewOrder() {
    print("0. Exit");
    print("1. Home");
    print("Check products: ");
    for(int i = 0; i < order.products.length; i++) {
      print("\t${i + 1}. Product: ${order.products[i].product}.\tQuantity: ${cart.carts[i].quantity}\tPrice: ${cart.carts[i].total}");
    }
    print("\tTotal: ${order.total}");
    print("2. Pay");


    int index = (io.number ?? 0).toInt();
    print('\n\n\n');
    if(index == 1) {
      HomePage();
    } else if(index == 0) {
      print("Thank you for attention! Exit!");
      return;
    } else if(index != 2) {
      viewOrder();
    }

    print("To'lov turini tanlang:");
    List<String> cardType = [
      "Humo",
      "UzCard",
      "Visa",
      "Master Card",
    ];

    for(int i = 0; i < cardType.length; i++) {
      print("${i + 1}. ${cardType[i]}");
    }
    print("5. Naxt");
    index = (io.number ?? 0).toInt();
    if(0 < index && index < 5) {
      String cardNumber = io.text;
      // TODO: card validation
      payment.provider = cardType[index - 1];
      payment.status = "paid";

      print("Loading...");
      print("Haridingiz uchun rahmat. Manzilimiz: Toshkent sh. Shayxontoxur tumani. Beruniy 3a. PDP Academy. Alibaba 303 - xona! B28 Group.");
    } else if(index == 5) {
      print("Haridingiz uchun rahmat. Manzilimiz: Toshkent sh. Shayxontoxur tumani. Beruniy 3a. PDP Academy. Alibaba 303 - xona! B28 Group.");
    } else {
      print("Bizda boshqa to'lov turi mavjud emas!");
    }

    print("\n\n\n");
    HomePage();
  }
}