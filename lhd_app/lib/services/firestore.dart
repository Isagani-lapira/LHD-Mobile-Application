import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  // retrieve storage
  static Future<List<DocumentSnapshot>> fetchData(String query) async {
    QuerySnapshot querySnapshot;

    (query != '')
        ? querySnapshot = await FirebaseFirestore.instance
            .collection('portfolio')
            .where('category', isEqualTo: query)
            .get()
        : querySnapshot =
            await FirebaseFirestore.instance.collection('portfolio').get();
    return querySnapshot.docs;
  }

  static Stream<QuerySnapshot> feedbackStream() =>
      FirebaseFirestore.instance.collection('feedback').snapshots();
}
