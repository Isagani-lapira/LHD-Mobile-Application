import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lhd_app/widget/app_bar.dart';
import 'package:lhd_app/widget/text_widget.dart';
import 'package:lhd_app/widget/contact_row_widget.dart';
import 'package:lhd_app/widget/submit_button.dart';
import 'package:lhd_app/widget/buildFormFields.dart';
import 'package:lhd_app/theme/colors.dart';

class ContactUsScreen extends StatelessWidget {
  static const String id = 'contact_us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                'You can get in touch with us through below platform. Our team will reach out to you as soon as it would be possible',
                14,
                FontWeight.w200,
              ),
              SizedBox(height: 30),
              buildText('Customer support', 16, FontWeight.w200),
              SizedBox(height: 10),
              buildContactRow(Icons.call_outlined, 'Contact number:', '+64 12340 923 100'),
              SizedBox(height: 10),
              buildContactRow(Icons.email_outlined, 'Email address:', 'larryshomedesign@gmail.com'),
              SizedBox(height: 30),
              buildText('Social Media', 16, FontWeight.w200),
              SizedBox(height: 10),
              buildContactRow(Icons.facebook_outlined, 'Facebook:', 'larryhomedesigns'),
              SizedBox(height: 15),
              buildContactRow(FontAwesomeIcons.instagram, 'Instagram:', 'LH_Design'),
              SizedBox(height: 15),
              buildContactRow(FontAwesomeIcons.twitter, 'Twitter:', 'larryhomedesigns'),
              SizedBox(height: 30),
              buildText('Or Direct Us Here', 16, FontWeight.w200),
              SizedBox(height: 5),
              buildFormFields(),
              SizedBox(height: 20),
              buildSubmitButton(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
