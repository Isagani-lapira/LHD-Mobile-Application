import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lhd_app/models/favorite_product.dart';
import 'package:lhd_app/services/authentication.dart';

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
  static Future<void> addFavorite(FavoriteProduct product,
      {Function()? onError}) async {
    if (Authentication.getUID() != '') {
      try {
        FirebaseFirestore.instance.collection('favorite_product').add(
          {'uid': product.uid, 'productid': product.productID},
        );
      } catch (e) {
        throw Exception(e);
      }
    } else {
      onError!();
    }
  }

  static Future<bool> isFavorite(String uid, String productID) async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('favorite_product')
          .where('uid', isEqualTo: uid)
          .where('productid', isEqualTo: productID)
          .get();

      bool isExist = snapshot.docs.isNotEmpty;
      return isExist;
    } catch (e) {
      throw Exception(e);
    }
  }

  static void removeFavorite(FavoriteProduct favoriteProduct) {
    try {
      FirebaseFirestore.instance
          .collection('favorite_product')
          .where('uid', isEqualTo: favoriteProduct.uid)
          .where('productid', isEqualTo: favoriteProduct.productID)
          .get()
          .then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          snapshot.docs[0].reference.delete();
        }
      });
    } catch (e) {
      throw Exception(e);
    }
  }
}
