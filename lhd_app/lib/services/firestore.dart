import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lhd_app/models/favorite_product.dart';

class FireStoreService {
  // retrieve storage
  static Future<List<DocumentSnapshot>> fetchData(String query) async {
    QuerySnapshot querySnapshot;

    (query != '')
        ? querySnapshot = await FirebaseFirestore.instance
            .collection('portfolio')
            .where('category', isEqualTo: query)
            .get()
        : querySnapshot =
            await FirebaseFirestore.instance.collection('portfolio').get();
    return querySnapshot.docs;
  }

  static Stream<QuerySnapshot> feedbackStream() => FirebaseFirestore.instance
      .collection('feedback')
      .orderBy('datePosted', descending: true)
      .snapshots();

  //retrieve portfolio data
  static Stream<QuerySnapshot> getPortfolioData() {
    return FirebaseFirestore.instance.collection('portfolio').snapshots();
  }

  //add favorite product
  static Future<void> addProduct(FavoriteProduct product) async {
    try {
      FirebaseFirestore.instance.collection('favorite_product').add(
        {'uid': product.uid, 'productid': product.productID},
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
