import 'package:e_commerce/models/user_model.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/services/io_service.dart';

late User user;

class RegistrationPage {
  RegistrationPage() {
    registration();
  }
  void registration() {
    print("Registration");
    print("Email: ");
    String email = io.text;
    print("FirstName: ");
    String firstName = io.text;
    print("LastName: ");
    String lastName = io.text;
    print("Address: ");
    String address = io.text;
    print("Telephone: ");
    String telephone = io.text;
    print("Password: ");
    String password = io.text;
    String createdAt = DateTime.now().toString();

    user = User(1, email, password, firstName, lastName, address, telephone, createdAt);
    print("You are successfully registration!\n");
    goToHome();
  }

  void goToHome() {
    HomePage();
  }
}