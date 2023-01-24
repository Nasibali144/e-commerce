import 'package:e_commerce/database/categories.dart';
import 'package:e_commerce/services/io_service.dart';

class HomePage {
  HomePage() {
    print("Home Page");
    viewCategory();
  }

  void viewCategory() {
    print("Select category:");
    for(int i = 0; i < categories.length; i++) {
      print("$i. ${categories[i]}");
    }

    int index = (io.number ?? 0).toInt();
  }
}