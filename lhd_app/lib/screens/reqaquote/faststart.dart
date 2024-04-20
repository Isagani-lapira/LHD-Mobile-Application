import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'basement.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FastStart(),
    );
  }
}




class Strings {
  static String fs = 'Congratulations on taking another step closer to realizing your dream of building your new home!' +
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
                    '\n\n';




}

//Home
class FastStart extends StatelessWidget {
  const FastStart({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: Text(Strings.fs,
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
                      backgroundColor: AppColor.primaryColor,
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