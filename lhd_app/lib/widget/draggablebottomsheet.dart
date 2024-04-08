import 'package:flutter/material.dart';
import 'package:lhd_app/services/firestore.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:intl/intl.dart';

class FeedbackSheet extends StatefulWidget {
  const FeedbackSheet({super.key});

  @override
  State<FeedbackSheet> createState() => _FeedbackSheetState();
}

class _FeedbackSheetState extends State<FeedbackSheet> {
  void _showFeedback(BuildContext context) async {
    var snapShot = FireStoreService.feedbackStream();
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(25.0),
            decoration:
                kContainerDecor.copyWith(color: AppColor.secondaryColor),
            child: StreamBuilder(
              stream: snapShot,
              builder: ((context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child:
                        CircularProgressIndicator(color: AppColor.primaryColor),
                  );
                }

                final feedbackList = snapshot.data?.docs;
                List<FeedBackWidget> feedbackWidget = [];
                for (var feedback in feedbackList!) {
                  DateTime datePosted = feedback['datePosted'].toDate();
                  String formattedDate =
                      DateFormat('MMM,dd,yyyy').format(datePosted);
                  feedbackWidget.add(
                    FeedBackWidget(
                      fullname: feedback['fullname'],
                      position: feedback['position'],
                      message: feedback['message'],
                      date: formattedDate,
                    ),
                  );
                }
                return ListView(
                  children: feedbackWidget,
                );
              }),
            ),
          );
        });
  }

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
                _showFeedback(context);
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
  final String fullname;
  final String position;
  final String message;
  final String date;
  const FeedBackWidget({
    super.key,
    required this.fullname,
    required this.position,
    required this.message,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          fullname,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        Text(position, style: const TextStyle(color: Colors.white)),
        const SizedBox(height: 10.0),
        Text(message,
            style: const TextStyle(color: Colors.white, fontSize: 12.0)),
        const SizedBox(height: 10.0),
        Text(date,
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.white60,
            ),
            textAlign: TextAlign.end),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
