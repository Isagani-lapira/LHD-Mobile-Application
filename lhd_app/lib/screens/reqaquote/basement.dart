import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'firstfloor.dart';

//BASEMENT DESIGN
class Basement extends StatefulWidget {
  const Basement({super.key});

  @override
  _BasementState createState() => _BasementState();
}

class _BasementState extends State<Basement> {
  String? wallConstruction;
  String? basementWalls;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basement Design',
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
                  'PART 1: Basement Design',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),




              Text(
                'What type of basement wall construction do you plan on using?',
                textAlign: TextAlign.justify,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  alignment: Alignment.centerLeft,
                  child: PopupMenuButton<String>(
                    initialValue: wallConstruction,
                    onSelected: (value) {
                      // Handle dropdown selection
                      setState(() {
                        wallConstruction = value;
                      });
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: null, // Empty value for the hint
                          child: Text('Please choose'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Block',
                          child: Text('Block'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Poured',
                          child: Text('Poured'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Wall',
                          child: Text('Wall'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Precast',
                          child: Text('Precast'),
                        ),
                      ];
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            wallConstruction ?? 'Please choose',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),





              Text(
                'Do you want the exterior of your basement walls finished?',
                textAlign: TextAlign.justify,
              ),

              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null, // Allow multiline input
                decoration: InputDecoration(
                  hintText: 'Brick, Stone, Stucco, Etc.',
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
                'Is your lot sloped to allow a walk-out basement?',
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
                'Is the front of your basement going to be a walk-out part?',
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
                'Do you have plans to finish it in the future?',
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
                'Will your finished basement have any plumbing in it?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Aside from the standard sump pump pit.',
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
                'Putting your furnace in the basement?',
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
                'Beams that support the first floor system.',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'May they be exposed or hidden from view?',
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
                'TIP: If you are planning on putting rooms in your basement in the future, give a rough sketch to your designer. He will be able to hide most of the posts inside walls and give your basement a cleaner look. (This is possible only if the 3” steel columns are used, not the 6 x 8 pine posts we use on the first floor in log homes.)',
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
                            builder: (context) => LivingArea(),
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