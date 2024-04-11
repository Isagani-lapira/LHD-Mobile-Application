import 'package:flutter/material.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/widget/card.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: const Text(
          'Services we offer',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.8,
        crossAxisSpacing: 5.0,
        children: List.generate(kProductItem.length, (index) {
          return ItemCard(
            serviceName: kProductItem[index].keys.first,
            path: kProductItem[index].values.first,
            startPrice: kProductItem[index].values.last,
          );
        }),
      ),
    ]);
  }
}
