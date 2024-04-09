import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentPage = 0;

  List<String> images = [
    'https://larryshomedesigns.com/wp-content/uploads/2024/02/1709189284502.jpg',
    'https://larryshomedesigns.com/wp-content/uploads/2024/02/1709189298628.jpg',
    'https://larryshomedesigns.com/wp-content/uploads/2024/02/1709189316141.jpg',
    'https://larryshomedesigns.com/wp-content/uploads/2024/02/1709189330334.jpg',
    'https://larryshomedesigns.com/wp-content/uploads/2024/02/1709189284502.jpg',
    'https://larryshomedesigns.com/wp-content/uploads/2024/02/1709189298628.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          CarouselSlider(
            items: images.map((i) {
              return Builder(builder: (context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    i,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress != null) {
                        return LinearProgressIndicator(
                          color: AppColor.secondaryColor,
                          value: (loadingProgress.expectedTotalBytes != null)
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        );
                      }

                      return child;
                    },
                  ),
                );
              });
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 21 / 9,
              viewportFraction: 0.5,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          CircularPagination(
            images: images,
            currentPage: currentPage,
          )
        ],
      ),
    );
  }
}

class CircularPagination extends StatelessWidget {
  final List<String> images;
  final int currentPage;

  const CircularPagination({
    super.key,
    required this.images,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(images.length, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 3.0),
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: (currentPage == index)
                    ? AppColor.primaryColor
                    : AppColor.borderOutlineColor,
              ),
              color: (currentPage == index) ? AppColor.primaryColor : null,
            ),
          );
        }),
      ),
    );
  }
}
