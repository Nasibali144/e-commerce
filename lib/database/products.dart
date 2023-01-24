import 'dart:math';
import 'package:e_commerce/database/categories.dart';
import 'package:e_commerce/database/discounts.dart';
import 'package:e_commerce/models/product_model.dart';

final productApple = Product(1, "apple", "Taram: 1kg", "${Random().nextInt(10000000)}".padLeft(8, '0'), categoryFruits, 15000.0, noDiscount, DateTime.now().toString());
final productBanana = Product(2, "banana", "Banana Australia: 1kg", "${Random().nextInt(10000000)}".padLeft(8, '0'), categoryFruits, 10000.0, noDiscount, DateTime.now().toString());
final productCocaCola = Product(3, "coca-cola", "Coca-Cola: 1l, Shakarsiz", "${Random().nextInt(10000000)}".padLeft(8, '0'), categoryDrinks, 9000.0, discount10, DateTime.now().toString());
final productWater = Product(4, "Water", "Tashkent suv: 1l", "${Random().nextInt(10000000)}".padLeft(8, '0'), categoryDrinks, 2000.0, noDiscount, DateTime.now().toString());
final productMilk = Product(5, "milk", "Musafo: 1l", "${Random().nextInt(10000000)}".padLeft(8, '0'), categoryMilk, 15000.0, noDiscount, DateTime.now().toString());
final productMeat = Product(6, "meat", "Qasobxona, qo'ygo'shti: 1kg", "${Random().nextInt(10000000)}".padLeft(8, '0'), categoryMeat, 80000.0, noDiscount, DateTime.now().toString());