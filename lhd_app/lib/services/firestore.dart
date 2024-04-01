import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  // retrieve storage
  static Future<List<DocumentSnapshot>> fetchData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('portfolio').get();
    return querySnapshot.docs;
  }
}
