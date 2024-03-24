import 'package:flutter/material.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/widget/card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Services we offer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 5.0,
            children: List.generate(kProductItem.length, (index) {
              return ItemCard(
                serviceName: kProductItem[index].keys.first,
                path: kProductItem[index].values.first,
                startPrice: kProductItem[index].values.last,
              );
            }),
          ),
        )
      ],
    );
  }
}
