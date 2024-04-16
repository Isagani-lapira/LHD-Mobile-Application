import 'package:flutter/material.dart';
import 'package:lhd_app/screens/aboutusscreen.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/screens/servicescreen.dart';

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
  ServiceScreen.id,
  'roq',
  'contact',
];

const BoxDecoration kContainerDecor = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(16.0),
    topRight: Radius.circular(16.0),
  ),
);

const List<Map<String, String>> servicesData = [
  {
    'title': 'State of Rediness',
    'descrip': "When the time comes to have your residential floor: plans drawn by a professional you will need to be" +
        "aware of several things that will take place. First of all, it would be a wise idea to interview several different" +
        "designers. On the other hand, I have been blessed with having clients show up in my office and they liked what" +
        "they saw and heard -- and never bothered checking" +
        "into other designers. A large percentage of my business"
            "has come from word-of-mouth referrals by extremely"
            "satisfied clients. Most times comfort levels and good"
            "rapport are more valuable than mere costs alone."
  },
  {
    'title': 'Stick To Rule Number One',
    'descrip': "Let's say you are planning on using my services, which I certainly hope you will I follow a certain set" +
        "of procedures that is very predictable. There are few surprises, and I give it everything I have to make sure" +
        "that all your wants and needs are met. You see, I operate under one general rule: This is your house." +
        "You will be living in it so it needs to reflect you, not me. While I do make recommendations at times when" +
        "it is in your best interests, the final decisions are always yours."
  },
  {
    'title': 'Conducting Preliminary Measures',
    'descrip':
        "The first step in getting your residential floor plans mapped out is for me to have a meeting with you. (Larry's Home Designs is located in Pennsylvania but that will not stop me from having a meeting with you. I have designed homes in Montana, Florida, Nova Scotia and various states in the Midwest without ever seeing my clients. The phone, fax and e-mail made communication very easy.) After the initial meeting, I will do what is called a preliminary plan. Your floor plan or plans if you are going for multiple stories, including foundation or basement plan, are drawn to scale, and all 4 outside views, known as elevations, are included in this preliminary plan. The drawings are then sent to you and I highly encourage you to red-mark them, make notes and generally dissect anything you do not like. "
  },
  {
    'title': 'Reviewing and Revising',
    'descrip': "There are times when my client's residential floor plans do not need any changes from the preliminaries, " +
        "and if that is the case I go straight to finals where they are totally ready to submit to your local township " +
        "for a building permit. However, that is usually not the case. Why? Most of my clients randomly sketch their floor" +
        "plans on paper with total disregard to the actual size of the rooms. Then when I turn it into a scaled drawing some" +
        " things fit together and some things do not. It is the parts that do not fit together that cause the most problems in " +
        "design. That's when you; the homeowner, need to decide what you can and cannot sacrifice in your design. I take all of" +
        " the red marks from the preliminaries and turn them into the second version of a workable floor plan. These are what are" +
        "known as secondary plans. Ninety-nine percent of the time these plans will meet approval by you, the homeowner. Most of the" +
        " changes from here on are small and can easily; be made over the phone or e-mail."
  },
  {
    'title': 'Completion Details',
    'descrip': "When all the disputes and disagreements have been ironed out between spouses" +
        "on how their residential floor plans and overall home designs should be, then proceed to" +
        " the final drawing stage. It is at this point that you will be able to sit back and just wait" +
        "to hear from me about when you can pick up your plans, or have them shipped to you if you are cross-country." +
        "During the final plans phase I will be doing all the detail work which includes: making sure all the floor plans" +
        " are fully dimensioned, drawing all structural details so there is absolutely no question on the job site about what" +
        " is supposed to happen, detailing your window and door sizes, drawing electrical plans, checking everything to make" +
        " sure it is up to the most recent building codes, and doing a lumber list if you or your builder has requested one."
            ""
  },
  {
    'title': 'Artistic Finishing Touches',
    'descrip':
        """As a former professional artist, it is at this point that your set of residential floor plans has become more than just a job to be done. Your entire design has become a work of art for me. When an entire house plan has been taken from initial idea to the last shingle on the roof without any problems then consider my job completely done. Unlike some other design firms, my company sticks with the project from start to finish. """
  },
  {
    'title': 'Follow Boldly Where Others Have Succeeded',
    'descrip': "‘Over the years it has been my humble privilege to be able to receive comments" +
        "from my past clients that include things like: \"Nice job on the plans, you have all" +
        "great eye for detail.\" \"We have never had plans move through the building permit" +
        "process this fast before!\""
  },
];

const List<Map<String, dynamic>> kActionOptions = [
  {
    'icon': Icons.account_circle,
    'actionName': 'My Account',
    'subtitle': 'Make changes to your account',
  },
  {
    'icon': Icons.local_mall_outlined,
    'actionName': 'Order History',
    'subtitle': 'Make changes to your account this is my first rar',
  },
  {
    'icon': Icons.logout_outlined,
    'actionName': 'Logout',
    'subtitle': 'Log your current account to this device',
  },
];
