import 'package:e_commerce/pages/intro_page.dart';
import 'package:e_commerce/pages/registration_page.dart';
import 'package:e_commerce/services/io_service.dart';

import 'home_page.dart';

class LoginPage {
  LoginPage() {
    login();
  }

  void login() {
    print("Login");
    io.console("Email:");
    String email = io.text;
    io.console("Password: ");
    String password = io.text;

    if(email == user.email && password == user.password) {
      print("You are successfully Login!\n\n\n");
      goToHome();
    } else {
      print("Check your password or email!");
      selectOption();
    }
  }

  void selectOption() {
    print("1. Registration");
    print("2. Login");

    int page = (io.number ?? 0).toInt();
    print("\n\n\n");
    if(page == 1) {
      RegistrationPage();
    } else if(page == 2) {
      LoginPage();
    } else {
      IntroPage();
    }
  }

  void goToHome() {
    HomePage();
  }
}