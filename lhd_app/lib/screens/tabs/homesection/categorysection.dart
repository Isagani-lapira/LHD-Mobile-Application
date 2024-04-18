import 'package:flutter/material.dart';
import 'package:lhd_app/models/categorycount.dart';
import 'package:lhd_app/screens/tabs/homesection/productlist.dart';
import 'package:lhd_app/services/firestore.dart';
import 'package:lhd_app/theme/colors.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: StreamBuilder(
        stream: FireStoreService.getPortfolioData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
                child: CircularProgressIndicator(
              color: AppColor.secondaryColor,
            ));
          }

          List<CategoryCount> categoryCount = [];
          Map<String, int> tempCategCount = {}; // Map to store category counts
          snapshot.data!.docs.forEach((doc) {
            var data = doc.data() as Map<String, dynamic>;
            String? category = data['category'];

            //count the distinct number per category
            if (category != null) {
              tempCategCount[category] = (tempCategCount[category] ?? 0) + 1;
            }
          });

          tempCategCount.forEach((key, value) {
            categoryCount.add(CategoryCount(categoryName: key, count: value));
          });
          return ListView.builder(
            itemBuilder: (context, index) {
              String productName = categoryCount[index].categoryName;
              int productCount = categoryCount[index].count;
              return CategoryCard(
                name: productName,
                count: productCount,
                isLeftAlign: index % 2 == 0, //to make zigzag patter
                backgroundIndex: index + 1, //background index
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryItemList(
                          productName: categoryCount[index].categoryName,
                          totalCount: productCount),
                    ),
                  );
                },
              );
            },
            itemCount: categoryCount.length,
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String name;
  final int count;
  final bool isLeftAlign;
  final int backgroundIndex;
  final Function? onTap;
  const CategoryCard({
    super.key,
    required this.name,
    required this.count,
    this.isLeftAlign = true,
    this.backgroundIndex = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        margin: const EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                'assets/category_img/${backgroundIndex.toString()}.jpg'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(name,
                  textAlign: (!isLeftAlign) ? TextAlign.right : null,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: AppColor.backgroundColor)),
              Text(
                '${count.toString()} Products',
                textAlign: (!isLeftAlign) ? TextAlign.right : null,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColor.backgroundColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
