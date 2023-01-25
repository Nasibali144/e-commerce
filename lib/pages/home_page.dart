import 'package:e_commerce/database/categories.dart';
import 'package:e_commerce/pages/intro_page.dart';
import 'package:e_commerce/services/io_service.dart';

import 'cart_page.dart';
import 'category_page.dart';

class HomePage {
  HomePage() {
    print("Home Page");
    viewHome();
  }

  void viewHome() {
    print("0. Exit");
    print("1. Cart Page");
    print("2. Category Page");
    print("3. Log Out");
    int page = (io.number ?? 0).toInt();

    print('\n\n');
    switch(page) {
      case 0: {
        continue exit;
      }
      case 1: {
        CartPage();
      } break;
      case 2: {
        CategoryPage();
      } break;
      case 3: {
        IntroPage();
      } break;
      exit: default: {
        print("Thank you for attention! Exit!");
      }
    }
  }
}