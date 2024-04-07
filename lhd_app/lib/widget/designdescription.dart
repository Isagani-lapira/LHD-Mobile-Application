import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/widget/alertdialog.dart';

class DetailWidget extends StatelessWidget {
  final String title;
  final List descriptions;
  const DetailWidget({
    super.key,
    required this.title,
    required this.descriptions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.design_services,
            color: AppColor.secondaryColor,
          ),
          title: Text(
            title,
            style: const TextStyle(color: AppColor.secondaryColor),
          ),
        ),
        for (var descript in descriptions)
          DescriptionWidget(
            context: context,
            description: descript['title'],
            fullDescript: descript['description'],
          ),
      ],
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  final String description;
  final String fullDescript;
  final BuildContext context;
  const DescriptionWidget({
    super.key,
    required this.context,
    required this.description,
    required this.fullDescript,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(children: [
        Expanded(
          child: Text(
            description,
            style: const TextStyle(fontSize: 12.0),
          ),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                title: description,
                message: fullDescript,
                onPressed: (context) => Navigator.pop(context),
              ),
            );
          },
          child: const Icon(Icons.visibility),
        )
      ]),
    );
  }
}
