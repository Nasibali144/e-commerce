import 'package:e_commerce/models/category_model.dart';

final categoryDrinks = Category(1, "Drinks", DateTime.now().toString());
final categoryFruits = Category(2, "Fruits", DateTime.now().toString());
final categoryMilk = Category(3, "Milk", DateTime.now().toString(), "Мilk and dairy products");
final categoryMeat = Category(4, "Meat", DateTime.now().toString(), "Meat and meat products");

final List<Category> categories = [
  categoryDrinks,
  categoryFruits,
  categoryMilk,
  categoryMeat,
];