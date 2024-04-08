import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';

class FeedbackSheet extends StatefulWidget {
  const FeedbackSheet({super.key});

  @override
  State<FeedbackSheet> createState() => _FeedbackSheetState();
}

class _FeedbackSheetState extends State<FeedbackSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: kContainerDecor.copyWith(color: AppColor.secondaryColor),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppString.feedbackTitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColor.backgroundColor),
            ),
            const SizedBox(width: 10.0),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(25.0),
                        decoration: kContainerDecor.copyWith(
                            color: AppColor.secondaryColor),
                        child: ListView(
                          children: [
                            FeedBackWidget(),
                            FeedBackWidget(),
                          ],
                        ),
                      );
                    });
              },
              child: const Icon(
                Icons.launch,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}

class FeedBackWidget extends StatelessWidget {
  const FeedBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'John rar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        Text(
          'CEO & Founder',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Text(
          'Believe me, Larry & his ability to design structures, is a \'jewel in the rough.\' I was referred to him as an experienced log home designer & I had either a log (or log slab) home in mind. I contacted Larry, & in no time, had plans & the specifications. This was to the last nail & piece of siding.Larry\'s work is reasonably priced & excellent quality. He knows builders & suppliers who can have you in \'front of the fireplace\' in no time.',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        SizedBox(height: 10.0),
        Text(
          '22.03.2021',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white60,
          ),
          textAlign: TextAlign.end,
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
