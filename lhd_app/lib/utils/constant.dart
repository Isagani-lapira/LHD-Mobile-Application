import 'package:flutter/material.dart';
import 'package:lhd_app/screens/aboutusscreen.dart';
import 'package:lhd_app/screens/homescreen.dart';

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

const List<Map<String, String>> kInteriorDescrip = [
  {
    'title':
        '1.) The Common Goal of Energy Efficient Home Designsadfffffffffffff',
    'description':
        'German designers are working on what is a total passive solar design. In their quest for better energy efficient house plans they are hoping to build homes that rely solely on solar power. This means achieving the absolute best in insulation, solar gain, lot positioning of the home, etc., all while maintaining a workable plan that it is usable for each individual client. Their designs really impressed me. They are very close to achieving energy efficient home designs that rely on zero external power to maintain a comfortable living space.'
  },
  {
    'title': '2.) Simple Energy Efficient House Plans Factors to Consider',
    'description':
        'Matching your floor plan with your lot. Everybody wants or should want excellent curb appeal for their dream home. If the front of your house faces south, it should be designed in such a way that it looks good but also maximizes the amount of windows on that side. The same is true for the opposite: if the front of your house faces north it should have minimal windows but still have a great design to be attractive. \nBuilding a new home with an efficient heating system and inefficient insulation system is akin to driving a car in the winter time with the heater on high and the windows rolled down. Do not go there!',
  },
  {
    'title': '3.) Bringing it Together for You',
    'description':
        'Here at Larry’s Home Designs we are proud to be part of a company that handles very high quality polyurethane insulation structural insulated panels. These are custom-built to your energy efficient floor plans with the window and door openings precut when they arrive on the job site. The roof panels are also pre-cut to your specific roof design. \nThese panels add a much higher insulation value than a typical frame wall and roof. They can speed up construction, save energy for years and years to come, and make you a much happier home owner.'
  }
];

const List<Map<String, String>> kExteriorDescrip = [
  {
    'title': '1.) Two Main Persisting Design Problems',
    'description':
        'There are long periods, usually in winter, when the sun is not powerful. So, unless the design incorporates a huge battery back-up system, at some point external power will be needed.\nThe unfortunate thing about these energy efficient house plans is that they can still be a little bit out of the reach of the ordinary working man. The good news is every year “green products” are becoming more affordable. There are various products on the market that will help you achieve an energy efficient home design without breaking the bank, but you will still need some external power source other than the sun.'
  },
  {
    'title': '2.) The Easy "Green" Solution',
    'description':
        'What is the most efficient way to get a “green” or energy efficient house plan with the least expense? No matter what steps you take in designing your energy efficient house plans, if the insulation in the walls and roof is not adequate you are throwing money out the window. Not to mention a whole lot of heat!\nThe easiest solution to becoming energy efficient is to use structural insulated panels. These are available in many different forms, but the most effective form that I have found are the ones that are made in the factory and customized to your home.'
  },
  {
    'title': '3.) Keeping it Simple with Measurable Energy Saving Results',
    'description':
        'Energy efficient house plans do not need to be complicated. Using the right insulation system is a big first step to massive energy savings. The proper SIPs coupled with the simple strategies detailed above level the playing field for even modest new home budgets to stay in the “green” game and contribute to the ecosystem while enjoying personal long-term savings. '
  },
];

const List<String> kSIPLinks = [
  'https://www.youtube.com/watch?v=tE5z4IQzh10&t=507s',
  'https://www.youtube.com/watch?v=W3z8qRak17k',
  'https://www.youtube.com/watch?v=3emN6kXHIeg',
  'https://www.youtube.com/watch?v=OkQkr2erwjs',
];

const List<Map<String, String>> kAbouDescr = [
  {
    'title': '1. An “Industry First” guarantee on home design accuracy.',
    'description':
        'Nowhere during our search of home designers have we ever seen a guarantee offered. Not only do we offer a guarantee on our work'
  },
  {
    'title': '2. Over 20 years of custom planning experience.',
    'description':
        'Larry\’s design skills were uniquely forged from within a construction family. Working for a boss can be difficult, but working for one\’s own father is even harder.'
  },
  {
    'title': '3. The benefits of continuing education.',
    'description':
        'Larry\’s Home Designs does not believe in resting on past experience by itself. Ongoing education within the home design and building industry is a tool that helps them stay on top of their craft.'
  },
  {
    'title': '4. A passion for detail.',
    'description':
        'In a conversation with one of our contractors, the word “accuracy” was his description of one of the three main reasons he doesn\’t use another home designer.'
  },
  {
    'title': '5. Professionalism and a family-friendly atmosphere.',
    'description':
        'You\’ve likely heard the phrase about “treating friends like family and family like friends.”'
  },
  {
    'title':
        '6. Flexible office hours and building bridges of understanding and compatibility.',
    'description':
        'Typically homeowner’s and contractors have conflicting schedules when it comes to finding a good time to get together for project discussions.'
  },
  {
    'title': '7. Creating an optimal design and building experience.',
    'description':
        'The quality of your design experience with us and the work we do extends over into your overall building experience.'
  },
];

const List<Map<String, String>> kshowcase = [
  {
    'title': 'The Bachelors',
    'imagePath':
        'https://larryshomedesigns.com/wp-content/uploads/2024/02/the-bachelore.png',
  },
  {
    'title': 'THE HERMIT',
    'imagePath':
        'https://larryshomedesigns.com/wp-content/uploads/2024/02/the-hermit.png'
  },
  {
    'title': 'THE LEGEND',
    'imagePath':
        'https://larryshomedesigns.com/wp-content/uploads/2024/02/the-legend.png'
  },
  {
    'title': 'THE OASIS',
    'imagePath':
        'https://larryshomedesigns.com/wp-content/uploads/2024/02/the-oasis.png'
  },
];

const List<String> kDrawerNavId = [
  HomeScreen.id,
  'shopping',
  AboutUsScreen.id,
  'services',
  'roq',
  'contact',
];
