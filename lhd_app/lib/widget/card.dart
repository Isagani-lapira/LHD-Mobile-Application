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
