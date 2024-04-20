import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'garage.dart';



// DOOR AND WINDOW DESIGN
class DoorNWindow extends StatefulWidget {
  const DoorNWindow({super.key});

  @override
  _DoorNWindowState createState() => _DoorNWindowState();
}

class _DoorNWindowState extends State<DoorNWindow> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Door and Window Design',
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
                  'PART 3: Door and Window Design',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),





              Text(
                'Front door style?',
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
                'Do you prefer sliding or hinged patio/deck doors?',
                textAlign: TextAlign.justify,
              ),

              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null, // Allow multiline input
                decoration: InputDecoration(
                  hintText: 'Hinged doors are more maintenance free in the long-term.',
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
                'The style of windows in each different room?',
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
                'Do you want skylights in your kitchen?',
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
                'If your Master Bedroom is in a single-story section, do you want skylights in your ceiling?',
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
                'Do you want windows above your tub to enjoy a scenic view?',
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
                'Skylights in your loft?',
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
                'Circle-top windows above the main windows in your cathedral-ceiling living room – or other non-standard window style?',
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
                'TIP: If the secondary bedroom(s) are next to the Master Bedroom, place a closet between the two bedrooms. Make sure the second bathroom is not far from the bedroom, preferably next door. If there are two secondary bedrooms on the first floor, place the bath between them or across the hall from them. There should also be closets between the secondary bedrooms if they are side-by-side for noise dampening purposes. You don’t want to let your night-owl child keep the early-riser from getting their sleep!',
                textAlign: TextAlign.justify, style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 15),




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
                            builder: (context) => Garage(),
                          ),
                        );

                      },
                      child: Text(
                        'Next',
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