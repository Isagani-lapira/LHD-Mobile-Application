import 'package:flutter/material.dart';

const List<Map<String, dynamic>> kMenuItem = [
  {'title': 'Home', 'icon': Icon(Icons.home_outlined)},
  {'title': 'Shopping Cart', 'icon': Icon(Icons.shopping_cart_outlined)},
  {'title': 'About Us', 'icon': Icon(Icons.info_outline)},
  {'title': 'Services', 'icon': Icon(Icons.home_repair_service_outlined)},
  {
    'title': 'Request for Quotation',
    'icon': Icon(Icons.request_quote_outlined)
  },
  {'title': 'Our Contact', 'icon': Icon(Icons.phone_android_outlined)},
];

const List<Map<String, String>> kProductItem = [
  {'COTTAGE GARAGE PLAN': 'assets/images/house1.png', "price_start": '\$45.00'},
  {
    'Craftsman Garage Plan': 'assets/images/house2.png',
    "price_start": '\$45.00'
  },
  {'Modern Farm house': 'assets/images/house3.png', "price_start": '\$45.00'},
  {'Modern Garage Plan': 'assets/images/house4.png', "price_start": '\$45.00'},
  {'COTTAGE GARAGE PLAN': 'assets/images/house5.png', "price_start": '\$45.00'},
  {'COTTAGE GARAGE PLAN': 'assets/images/house6.png', "price_start": '\$45.00'},
];

const EdgeInsetsGeometry kBodyPadding = EdgeInsets.all(25.0);
