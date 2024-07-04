

import 'package:sneakers/helper/api.dart';
import 'package:sneakers/models/store_model.dart';

class CategoriesServices {
  static const url = 'https://fakestoreapi.com/';
  static const endPoint='products/category/';

  Future<List<StoreModel>> getProductsByCategories(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: url+endPoint+categoryName);

    List<StoreModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(StoreModel.fromJson(data[i]));
    }
    return productsList;
  }
}
