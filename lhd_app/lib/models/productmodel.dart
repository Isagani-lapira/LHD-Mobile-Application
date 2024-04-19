import 'package:lhd_app/models/favorite_product.dart';
import 'package:lhd_app/services/firestore.dart';

class ProductModel {
  final String id;
  final String name;
  final String path;
  final String category;
  bool isFavorite;

  ProductModel({
    required this.id,
    required this.name,
    required this.path,
    required this.category,
    this.isFavorite = false,
  });

  void toggleFavorite(String uid, String productId) {
    FavoriteProduct favmodel = FavoriteProduct(
      uid: uid,
      productID: productId,
    );
    //add favorite
    if (!isFavorite) {
      FireStoreService.addFavorite(favmodel);
    } else {
      FireStoreService.removeFavorite(favmodel);
    }

    isFavorite = !isFavorite;
  }
}
