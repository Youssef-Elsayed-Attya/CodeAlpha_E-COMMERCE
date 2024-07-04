
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sneakers/data/dummy_data.dart';
import 'package:sneakers/models/product_model.dart';
import 'package:sneakers/widget/snack_bar.dart';


import '../models/models.dart';

class AppMethods {
  AppMethods._();
  static void addToCart(ProductModel data, BuildContext context) {
    bool contains = itemsOnBag.contains(data);

    if (contains == true) {
      failedSnackBar(context,'this item already in your bag');

    } else {
      itemsOnBag.add(data);
      successSnackBar(context,'added to your bag');
    }
  }

  static double sumOfItemsOnBag() {
    double sumPrice = 0.0;
    for (ProductModel bagModel in itemsOnBag) {
      sumPrice = sumPrice + bagModel.price;
    }
    return sumPrice;
  }

  static int generateId() {
    int currentTime = DateTime.now().millisecondsSinceEpoch;
    Random random = Random(currentTime);
    int randomInt = random.nextInt(90000000) + 10000000;

    return randomInt;
  }
  static Color generateRandomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}
