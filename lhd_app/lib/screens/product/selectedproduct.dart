import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/theme/theme.dart';

class ProductView extends StatelessWidget {
  static String id = 'productview_id';
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/lhd-project-c55a7.appspot.com/o/1.png?alt=media&token=d82ba381-3b10-49c6-a3f8-1e11987256be',
                      width: width * 0.40,
                      height: height * 0.30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'COTTAGE GARAGE PLAN',
                    style: AppTheme.lightTheme.textTheme.labelLarge!
                        .copyWith(color: AppColor.secondaryColor),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Perhaps the most iconic sneaker of all-time, this original "Chicagho"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See Plan Options',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
