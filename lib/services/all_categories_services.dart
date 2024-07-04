
import 'package:sneakers/helper/api.dart';

class AllCategoriesServices {
  static const url = 'https://fakestoreapi.com/';
  static const endPoint='categories';

  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url:url+endPoint);
    return data;
  }
}
