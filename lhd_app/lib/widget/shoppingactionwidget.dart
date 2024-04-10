import 'package:flutter/material.dart';

class ShoppingActionList extends StatelessWidget {
  ShoppingActionList({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> _shoppingList = [
    {'icon': Icons.shopping_bag_outlined, 'actionName': 'Cart'},
    {'icon': Icons.favorite_border_outlined, 'actionName': 'Wishlist'},
    {'icon': Icons.stars, 'actionName': 'Review'},
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0),
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _shoppingList.map((i) {
            return Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(
                  i['icon'],
                  color: const Color.fromARGB(255, 153, 153, 153),
                ),
                const SizedBox(height: 8.0),
                Text(
                  i['actionName'],
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
