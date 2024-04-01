import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lhd_app/services/firestore.dart';

import '../theme/colors.dart';

class PortfolioList extends StatefulWidget {
  const PortfolioList({super.key});

  @override
  State<PortfolioList> createState() => _PortfolioListState();
}

class _PortfolioListState extends State<PortfolioList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DocumentSnapshot>>(
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snap.hasError) {
          return Center(child: Text('Error: ${snap.error}'));
        } else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              String path = snap.data![index]['path'];
              return Container(
                margin: const EdgeInsets.all(6.0),
                child: Image.network(
                  path,
                  fit: BoxFit.cover,
                  loadingBuilder:
                      (context, widget, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress != null) {
                      return Center(
                        child: LinearProgressIndicator(
                          color: AppColor.primaryColor,
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    }

                    return widget;
                  },
                ),
              );
            },
            itemCount: snap.data!.length,
          );
        }
      },
      future: FireStoreService.fetchData(),
    );
  }
}
