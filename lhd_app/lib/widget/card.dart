import 'package:flutter/material.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 600,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(9.0)),
            child: Image.asset(
              path,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          serviceName,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: AppColor.secondaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              startPrice,
              style: const TextStyle(fontSize: 12.0),
            ),
            const Icon(
              Icons.shopping_cart,
              size: 15.0,
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
        )
      ],
    );
  }
}
