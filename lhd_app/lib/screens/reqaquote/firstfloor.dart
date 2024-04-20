import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'secondfloor.dart';

//FIRST FLOOR DESIGN


// General Living Area
class LivingArea extends StatefulWidget {
  const LivingArea({super.key});

  @override
  _LivingAreaState createState() => _LivingAreaState();
}

class _LivingAreaState extends State<LivingArea> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Floor Design',
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
                  'General Living Area',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),




              Text(
                'Do you want an open floor plan?',
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

              SizedBox(height: 10),





              Text(
                'Want an open feeling but each space generally divided?',
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
                'Should kitchen have a direct line-of-sight from the dining and living rooms?',
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
                'Do you eat in the kitchen the most?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Or Dining Room? Or Living Room in front of the TV?',
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
                'Prefer to eat in the kitchen but don’t want to make it big enough for a table?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Try to incorporate a bar or island in your design.',
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
                'Natural light or artificial light?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Please explain...',
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
                'Do you have a spectacular view you wish to capture from the living or dining room?',
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
                'Fireplace in the living room?',
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

              SizedBox(height: 20),





              Text(
                'Watch a lot of TV in the living room?',
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

              SizedBox(height: 20),




              Text(
                'Do you entertain a lot?',
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

              SizedBox(height: 20),






              Text(
                'Want a “formal mud room” known as a foyer? Closet in the foyer? Bench?',
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

              SizedBox(height: 20),






              Text(
                'Guest bathroom?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Should be in a fairly central location for living, dining and kitchen.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 20),





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
                            builder: (context) => MasterBedroom(),
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





// Master Bedroom Area
class MasterBedroom extends StatefulWidget {
  const MasterBedroom({super.key});

  @override
  _MasterBedroomState createState() => _MasterBedroomState();
}

class _MasterBedroomState extends State<MasterBedroom> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Floor Design',
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
                  'Master Bedroom Area',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),




              Text(
                'What size is your bed?',
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

              SizedBox(height: 10),





              Text(
                'Do you have nightstands on both sides of your bed?',
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
                'Do you keep most of your clothes in a dresser or a closet?',
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
                'Are you and your spouse always pushing for more closet space?',
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
                'Would you both benefit from a his/hers walk-in closet?',
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
                'Do you prefer showers or baths? Or both?',
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
                'Would a hidden toilet area be convenient for you and your spouse to use the bathroom at the same time?',
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
                'What size shower works best for you?',
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

              SizedBox(height: 20),





              Text(
                'Would a double bowl vanity be a bonus in your morning routine?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Perhaps two individual vanities in the same bathroom?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 20),




              Text(
                'Do you need a special sitting area beside your tub to do your nails or other hygiene?',
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

              SizedBox(height: 20),






              Text(
                'Do you need a linen/towel closet in your bathroom or do you prefer that to be in your walk-in closet?',
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

              SizedBox(height: 20),






              Text(
                'Do you want a private deck outside your Master Bedroom?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Should be in a fairly central location for living, dining and kitchen.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Handle input changes
                },
              ),

              SizedBox(height: 20),





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
                            builder: (context) => Bedrooms(),
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





// Bedrooms on First Floor
class Bedrooms extends StatefulWidget {
  const Bedrooms({super.key});

  @override
  _BedroomsState createState() => _BedroomsState();
}

class _BedroomsState extends State<Bedrooms> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Floor Design',
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
                  'Bedrooms on First Floor',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),





              Text(
                'How many bedrooms?',
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
                'What type and size closets?',
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
                'What size bed in each?',
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
                'Any furniture in the rooms, including dressers or wardrobes?',
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
                'Any access from the outside of the house such as from a deck or patio?',
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
                'Desired size, style or configuration of windows, doors, skylights, etc.',
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
                            builder: (context) => SecondFloor(),
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