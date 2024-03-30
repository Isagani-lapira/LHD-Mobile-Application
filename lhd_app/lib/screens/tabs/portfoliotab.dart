import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:chips_choice/chips_choice.dart';

class PortfolioTab extends StatefulWidget {
  const PortfolioTab({super.key});

  @override
  State<PortfolioTab> createState() => _PortfolioTabState();
}

class _PortfolioTabState extends State<PortfolioTab> {
  int tag = 1;
  List<String> options = [
    'All work',
    'Tiny houses',
    '3D House Plan',
    'Barn',
    'Garage',
    'SIPS',
    'Wheelchair Accessible',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppString.portfolio,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          AppString.portfolioSubtitle,
          style: TextStyle(fontSize: 12.0),
        ),
        ChipsChoice<int>.single(
          value: tag,
          onChanged: (index) => setState(() => tag = index),
          choiceItems: C2Choice.listFrom(
            source: options,
            value: (i, v) => i,
            label: (i, v) => v,
          ),
          choiceCheckmark: true,
          choiceStyle: C2ChipStyle.filled(
            selectedStyle: const C2ChipStyle(
              backgroundColor: AppColor.secondaryColor,
              foregroundColor: AppColor.backgroundColor,
            ),
            color: AppColor.backgroundColor,
          ),
        ),
      ],
    );
  }
}
