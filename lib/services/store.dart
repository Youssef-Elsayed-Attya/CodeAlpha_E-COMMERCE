import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sneakers/models/models.dart';
import 'package:sneakers/utils/constants.dart';

class Store {
  //CRUD  =>  create read update delete

  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  //Write
  addProduct(ProductModel product) {
    _fireStore
        .collection(AppConstantsText.kProductsCollection)
        .doc(product.name + product.model)
        .set({
      AppConstantsText.kProductName: product.name,
      AppConstantsText.kProductDescription: product.description,
      AppConstantsText.kProductModel: product.model,
      AppConstantsText.kProductPrice: product.price,
      AppConstantsText.kProductColor: product.modelColor.value,
      AppConstantsText.kProductImage: product.imgAddress,
    });
  }

  //read
  Stream<QuerySnapshot> loadProducts() {
    return _fireStore
        .collection(AppConstantsText.kProductsCollection)
        .snapshots();
  }

  //delete
  deleteProduct(documentId) {
    _fireStore
        .collection(AppConstantsText.kProductsCollection)
        .doc(documentId)
        .delete();
  }

  //update
  editProduct(data, docId) {
    _fireStore
        .collection(AppConstantsText.kProductsCollection)
        .doc(docId)
        .update(data);
  }
}
