import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'faststart.dart';
// GARAGE
class Garage extends StatefulWidget {
  const Garage({super.key});

  @override
  _GarageState createState() => _GarageState();
}

class _GarageState extends State<Garage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Garage',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16), // Add padding for spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
            children: [
              // Add your elements inside the Container
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'img/1b.png',
                  ),
                ),
              ),
              SizedBox(height: 10),



              Center(
                child: Text(
                  'PART 4: Garage Design',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),





              Text(
                'How much inside parking do you need?',
                textAlign: TextAlign.justify,
              ),

              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null, // Allow multiline input
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)), // Set border radius
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 10),





              Text(
                'If you have more than one vehicle bay do you want 1 large or several smaller doors?',
                textAlign: TextAlign.justify,
              ),

              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null, // Allow multiline input
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)), // Set border radius
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 10),





              Text(
                'Do you need any extra space for workspace or lawn and garden equipment storage?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null, // Allow multiline input
                decoration: InputDecoration(
                  hintText: 'Or parking for 4-wheelers or a motorcycle or 2?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)), // Set border radius
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 10),





              Text(
                'Do you need an outside entry door?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'If yes, where?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 10),





              Text(
                'Do you want to utilize the space in the roof system of the garage for storage or an extra room?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 10),






              Text(
                'What kind of access to the garage’s upstairs do you want?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Exterior or interior? A pull-down stairs?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 10),






              Text(
                'What type of windows and doors do you want?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 10),









              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, bottom: 10.0), // Add margin to the right
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FastStart(),
                          ),
                        );

                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),


              // Add more elements as needed
            ],
          ),
        ),
      ),
    );
  }
}