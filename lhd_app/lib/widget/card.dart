import 'package:flutter/material.dart';
import 'package:lhd_app/models/productmodel.dart';
import 'package:lhd_app/services/authentication.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/theme/theme.dart';

class ItemCard extends StatelessWidget {
  final String path;
  final String serviceName;
  final String startPrice;

  const ItemCard({
    super.key,
    required this.serviceName,
    required this.path,
    required this.startPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(9.0)),
          child: Image.asset(
            path,
            height: 100.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          serviceName,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              startPrice,
            ),
            const Icon(
              Icons.shopping_cart,
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: AppTheme.bodyButton,
            child: const Text(
              'Plan now!',
              style: TextStyle(inherit: false),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatefulWidget {
  final ProductModel productModel;
  const ProductCard({
    super.key,
    required this.productModel,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    ProductModel productModel = widget.productModel;
    String uid = Authentication.auth.currentUser!.uid;
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: ListTile(
          onTap: () {
            print('detected list tile');
          },
          leading: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            child: Image.network(
              productModel.path,
              width: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            productModel.name,
            style: AppTheme.lightTheme.textTheme.bodySmall!
                .copyWith(fontSize: 12.0),
          ),
          trailing: GestureDetector(
            onTap: () {
              productModel.toggleFavorite(uid, productModel.id);
              setState(() {
                productModel.isFavorite;
              });
            },
            child: Icon(
              (productModel.isFavorite)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: (productModel.isFavorite)
                  ? AppColor.primaryColor
                  : AppColor.iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
