import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/widget/productlist.dart';

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
            Expanded(child: ProductListView(productName: productName))
          ],
        ),
      ),
    );
  }
}
