

import '../helper/api.dart';
import '../models/store_model.dart';

class AllProductsServices {
  String url = 'https://fakestoreapi.com/';
  Future<List<StoreModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: '${url}products');
    List<StoreModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(StoreModel.fromJson(data[i]));
    }
    return productsList;
  }
}
