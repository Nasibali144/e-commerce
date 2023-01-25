import 'package:e_commerce/models/user_model.dart';
import 'package:e_commerce/pages/login_page.dart';
import 'package:e_commerce/pages/registration_page.dart';
import 'package:e_commerce/services/io_service.dart';

User user = User(00, "a", "1", "Dart", "Flutter", "Google", "2017", DateTime(2011).toString());

class IntroPage {
  IntroPage() {
    welcome();
  }

  void welcome() {
    print("Welcome to PDPBazar!");
    print("Select number:");
    print("1.Login\n2.Registration\n3.Exit");
    int page = (io.number ?? 1).toInt();
    if(page == 1) {
      LoginPage();
    } else if(page == 2) {
      print("\n");
      RegistrationPage();
    } else if(page == 3) {
      print("Thank you for attention! Exit!");
    } else {
      welcome();
    }
  }
}