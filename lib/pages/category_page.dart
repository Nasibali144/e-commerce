import 'package:e_commerce/database/categories.dart';
import 'package:e_commerce/database/products.dart';
import 'package:e_commerce/models/cart_item_model.dart';
import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/models/category_model.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/intro_page.dart';
import 'package:e_commerce/services/io_service.dart';

Map<Category, List<Product>> categoryMap = {};

class CategoryPage {
  CategoryPage() {
    print("Category Page");
    viewCategory();
  }

  void viewCategory () {
    print("0. Exit");
    for(int i = 0; i < categories.length; i++) {
      print("${i + 1}. ${categories[i]}");
      filterProduct(categories[i]);
    }
    print("${categories.length + 1}. HomePage");

    int index = (io.number ?? 0).toInt();
    if(index == 0) {
      print("Thank you for attention! Exit!");
      return;
    } else if(index == categories.length + 1) {
      HomePage();
    } else if(index < 0 || index > categories.length + 1) {
      print("\nIltimos ko'rsatilgan taribdagi son kiriting");
      viewCategory();
    }
    final productList = categoryMap[categories[index - 1]] ?? [];
    for(int i = 0; i < productList.length; i++) {
      print("${i + 1} - ${productList[i]}");
    }

    print("\nQaysi mahsulotni tanlamoqchisiz ?\nOrtga qaytish uchun 0 ni kiriting:)");

    index = (io.number ?? 0).toInt();
    if(index == 0 || index < 0 || index > categories.length) {
      viewCategory();
    }

    var product = productList[index - 1];
    print("Name: ${product.name}");
    print("Price: ${product.price}");
    print("Discount: ${product.discount}");
    print("Description: ${product.desc}");
    print("Created at: ${product.createdAt}");

    print("1. Add to cart");
    print("2. Ortga qaytish");

    index = (io.number ?? 0).toInt();

    if(index != 1) {
      viewCategory();
    }

    print("\nBu mahsulotdan qancha miqdorda olmoqchisiz?(son qiymatda)");
    index = (io.number ?? 0).toInt();

    if(index <= 0) {
      print("Iltimos to'g'ri qiymat kiritishingizni so'raymiz");
      viewCategory();
    }

    final cartItem = CartItem(01, product, index, user.id, DateTime.now().toString());
    cart = Cart(01, user.id, cart.createdAt, cart.carts..add(cartItem), DateTime.now().toString());
    print("\n");
    viewCategory();
  }

  void filterProduct(Category category) {
    final productList = products.where((element) => element.category == category).toList();
    categoryMap.addAll({category: productList});
  }
}