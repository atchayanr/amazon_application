import 'package:amazon_application/models/user_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CloudFirestore{
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future uploadNameAndAddressToDatabase(
    {required UserDetails user, required String address}
  )async{
    await firebaseFirestore.collection("users")
    .doc(firebaseAuth.currentUser!.uid)
    .set(user.getJson());
    }
  }
