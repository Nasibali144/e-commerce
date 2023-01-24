import 'package:e_commerce/pages/registration_page.dart';
import 'package:e_commerce/services/io_service.dart';

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
      //TODO: LoginPage
      print("Login pagemizda tehnik ishlar olib borilmoqda\n");
      welcome();
    } else if(page == 2) {
      print("\n");
      RegistrationPage();
    } else {
      print("Thank you for attention! Exit!");
    }
  }
}