import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lhd_app/theme/colors.dart';

class ContactUsScreen extends StatelessWidget {
  static const String id = 'contact_us';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF292929),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF292929),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You can get in touch with us through below platform. Our team will reach out to you as soon as it would be possible',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: AppColor.textColor,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Customer support',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Color(0xFF292929),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.call_outlined, color: Color(0xFF292929), size: 30),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact number: ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF292929),
                        ),
                      ),
                      Text(
                        '+64 12340 923 100',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF292929),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.email_outlined, color: Color(0xFF292929), size: 30),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email address: ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF292929),
                        ),
                      ),
                      Text(
                        'larryshomedesign@gmail.com',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF292929),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Social Media',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Color(0xFF292929),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.facebook_outlined, color: Color(0xFF292929), size: 30),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Facebook: ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF292929),
                        ),
                      ),
                      Text(
                        'larryhomedesigns',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF292929),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(FontAwesomeIcons.instagram, color: Color(0xFF292929), size: 30),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Instagram: ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF292929),
                        ),
                      ),
                      Text(
                        'LH_Design',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF292929),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(FontAwesomeIcons.twitter, color: Color(0xFF292929), size: 30),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Twitter: ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF292929),
                        ),
                      ),
                      Text(
                        'larryhomedesigns',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF292929),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Or Direct Us Here',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Color(0xFF292929),
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name', labelStyle: TextStyle(fontSize: 12), hintText: 'Full Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address', labelStyle: TextStyle(fontSize: 12), hintText: 'Email Address'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Your Request', labelStyle: TextStyle(fontSize: 12), hintText: 'Your Request'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Your Budget', labelStyle: TextStyle(fontSize: 12), hintText: 'Your Budget'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Additional Info', labelStyle: TextStyle(fontSize: 12), hintText: 'Additional Info'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFCC0000),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
