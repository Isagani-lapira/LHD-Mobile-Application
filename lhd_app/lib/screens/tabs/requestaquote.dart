import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FastStart(),
    );
  }
}

//Home
class FastStart extends StatelessWidget {
  const FastStart({super.key});

  @override
  Widget build(BuildContext context) {
    Color accent2 = Color(0xFFCC0000);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fast Start',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'img/1b.png',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: Text('Fast-Start Home Design Guide',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0,
                  0.0), // Add padding to left, right, and bottom sides
              child: Text(
                'Congratulations on taking another step closer to realizing your dream of building your new home!' +
                    '\n\n' +
                    'This Fast Start Home Design Guide is designed to get you started thinking about the many different aspects of each different area of your home. It is intended to help you establish a strong foundation of clarifying your ideas. This gives you a well-laid starting point from which to launch your relationship with your designer.' +
                    '\n\n' +
                    'A good designer will take the answers to all of the questions below and make them work smoothly in your specific design. He will also take a close look at your floor plan and offer suggestions where traffic patterns can possibly be improved.' +
                    '\n\n' +
                    'For example, some designs I have seen had closets tucked into strange corners, and in reverse there were open floor spaces where a closet would fit nicely. Granted, you the homeowner have the final say in a design, but being open (not caving in) to suggestions can often bring about improvements that you might not have had a reason to think about.' +
                    '\n\n' +
                    'Also, give some serious consideration to the exterior appearance of your home. It usually does not take much to add a little design and totally change a plain exterior into a unique, eye-catching design. Ask your designer for suggestions and some preliminary drawings.' +
                    '\n\n' +
                    'Because your home will be totally unique to your needs and wants, house style, site location, etc., it will be impossible to completely cover every area or aspect in this guide. However, it is my hope that it will get your creative juices flowing and be a blessing to you in sparking constructive dialogue as you work through the design stages of your new home.' +
                    '\n\n' +
                    'One last design tip before you jump into it feet first: Don’t let yourself be limited to just answering the questions and sketching out a few things.' +
                    '\n\n' +
                    'Take the time to make notes – where applicable – about the reasons why you answered the question in the way you did. Not only will it clarify or even change your initial thoughts, but it’ll help your designer better understand why you want something. And just maybe give him practical insight about your needs and desires to work with you towards an even better solution.' +
                    '\n\n',
                textAlign: TextAlign.justify, // Align text justify
              ),
            ),
            Text(
                'Want to start planning your dream house? Request a quote now! \n',
                style: TextStyle(fontStyle: FontStyle.italic)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 15.0, bottom: 10.0), // Add margin to the right
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: accent2,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Basement(),
                        ),
                      );
                    },
                    child: Text(
                      'Request a Quote',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}










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
    Color accent2 = Color(0xFFCC0000);

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
                        backgroundColor: accent2,
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
    Color accent2 = Color(0xFFCC0000);

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
                        backgroundColor: accent2,
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
    Color accent2 = Color(0xFFCC0000);

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
                        backgroundColor: accent2,
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
    Color accent2 = Color(0xFFCC0000);

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
                        backgroundColor: accent2,
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











// Second Floor
class SecondFloor extends StatefulWidget {
  const SecondFloor({super.key});

  @override
  _SecondFloorState createState() => _SecondFloorState();
}

class _SecondFloorState extends State<SecondFloor> {

  @override
  Widget build(BuildContext context) {
    Color accent2 = Color(0xFFCC0000);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Floor Design',
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
                  'Second Floor',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),





              Text(
                'Do you wish to have a full two-story? Or a single-story look in the front and two stories in the back? Or other configuration?',
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
                'How many bedrooms are there?',
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
                'How many baths?',
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
                'Do you have a loft?',
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
                'Cathedral ceiling?',
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
                'Master bedroom on the second floor?',
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
                'Second floor balcony with access from the loft?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Works structurally best if it is directly on top of a first floor deck.',
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
                'Fireplace?',
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
                'Extra bedroom above the garage?',
                textAlign: TextAlign.justify,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Usually with access from the loft area.',
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
                'Need any rooms other than bedrooms upstairs, such as a den or sewing room?',
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
                        backgroundColor: accent2,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoorNWindow(),
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










// DOOR AND WINDOW DESIGN
class DoorNWindow extends StatefulWidget {
  const DoorNWindow({super.key});

  @override
  _DoorNWindowState createState() => _DoorNWindowState();
}

class _DoorNWindowState extends State<DoorNWindow> {

  @override
  Widget build(BuildContext context) {
    Color accent2 = Color(0xFFCC0000);

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
                        backgroundColor: accent2,
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












// GARAGE
class Garage extends StatefulWidget {
  const Garage({super.key});

  @override
  _GarageState createState() => _GarageState();
}

class _GarageState extends State<Garage> {

  @override
  Widget build(BuildContext context) {
    Color accent2 = Color(0xFFCC0000);

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
                        backgroundColor: accent2,
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



