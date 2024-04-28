import 'package:flutter/material.dart';
import 'package:lhd_app/models/favorite_product.dart';
import 'package:lhd_app/screens/login.dart';
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

  void toggleFavorite(BuildContext context, String uid, String productId) {
    FavoriteProduct favmodel = FavoriteProduct(
      uid: uid,
      productID: productId,
    );

    bool isErrorOccured = false;
    //add favorite
    if (!isFavorite) {
      FireStoreService.addFavorite(
        favmodel,
        onError: () {
          Navigator.pushNamed(context, LoginScreen.id);
          isErrorOccured = true;
        },
      );
    } else {
      FireStoreService.removeFavorite(favmodel);
    }

    if (!isErrorOccured) {
      isFavorite = !isFavorite;
    }
  }
}
