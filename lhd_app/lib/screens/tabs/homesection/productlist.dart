import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lhd_app/models/favorite_product.dart';
import 'package:lhd_app/models/productmodel.dart';
import 'package:lhd_app/services/authentication.dart';
import 'package:lhd_app/services/firestore.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/theme/theme.dart';

class CategoryItemList extends StatelessWidget {
  final String productName;
  final int totalCount;
  const CategoryItemList({
    super.key,
    required this.productName,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productName,
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5.0),
            child: const Icon(Icons.shopping_bag_outlined,
                color: AppColor.iconColor),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('$totalCount Products found'),
            Expanded(
              child: FutureBuilder(
                future: FireStoreService.fetchData(productName),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                          color: AppColor.secondaryColor),
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  List<ProductModel> products = [];
                  for (var data in snapshot.data!) {
                    products.add(ProductModel(
                        id: data.id,
                        name: data['project_name'],
                        path: data['path'],
                        category: data['category']));
                  }
                  return ListView.builder(
                    itemBuilder: ((context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ListTile(
                            onTap: () {
                              print('detected list tile');
                            },
                            leading: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              child: Image.network(
                                products[index].path,
                                width: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              products[index].name,
                              style: AppTheme.lightTheme.textTheme.bodySmall!
                                  .copyWith(fontSize: 12.0),
                            ),
                            trailing: GestureDetector(
                              onTap: () {
                                FireStoreService.addProduct(
                                  FavoriteProduct(
                                    uid: Authentication.auth.currentUser!.uid,
                                    productID: products[index].id,
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.favorite_border_outlined,
                                color: AppColor.iconColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    itemCount: products.length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
