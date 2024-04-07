import 'package:flutter/material.dart';
import 'package:lhd_app/models/category.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:lhd_app/widget/portfoliolist.dart';
import 'package:provider/provider.dart';

class PortfolioTab extends StatefulWidget {
  const PortfolioTab({super.key});

  @override
  State<PortfolioTab> createState() => _PortfolioTabState();
}

class _PortfolioTabState extends State<PortfolioTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CategoryData>(context);
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
          value: provider.tag,
          onChanged: (index) {
            setState(() => provider.tag = index);
            provider.setSelectedOption(provider.tag);
          },
          choiceItems: C2Choice.listFrom(
            source: provider.options,
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
        const Expanded(child: PortfolioList())
      ],
    );
  }
}
