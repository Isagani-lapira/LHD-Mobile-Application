import 'package:flutter/material.dart';
import 'package:lhd_app/models/productmodel.dart';
import 'package:lhd_app/services/authentication.dart';
import 'package:lhd_app/services/firestore.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/widget/card.dart';

class ProductListView extends StatelessWidget {
  final String productName;
  const ProductListView({
    super.key,
    required this.productName,
  });

  Future<bool> _isFavorite(String uid, String productID) async {
    bool isFavorite = await FireStoreService.isFavorite(uid, productID);
    return isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FireStoreService.fetchData(productName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: AppColor.secondaryColor),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        List<ProductModel> products = [];
        for (var data in snapshot.data!) {
          products.add(
            ProductModel(
                id: data.id,
                name: data['project_name'],
                path: data['path'],
                category: data['category']),
          );
        }
        return ListView.builder(
          itemBuilder: ((context, index) {
            String uid = Authentication.auth.currentUser!.uid;
            String productID = products[index].id;

            return FutureBuilder<bool>(
              future: _isFavorite(uid, productID),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LinearProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                bool isFavorite = snapshot.data ?? false;
                ProductModel productModel = ProductModel(
                  id: productID,
                  name: products[index].name,
                  path: products[index].path,
                  category: products[index].category,
                  isFavorite: isFavorite,
                );

                return ProductCard(productModel: productModel);
              },
            );
          }),
          itemCount: products.length,
        );
      },
    );
  }
}
