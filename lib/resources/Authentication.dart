import 'package:amazon_application/models/user_details.dart';
import 'package:amazon_application/resources/cloudfirestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authentication{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CloudFirestore cloudFirestore = CloudFirestore();

 Future<String> signUpUser(
      {required String name,
      required String address,
      required String email,
      required String password}) async{
        name.trim();
        address.trim();
        email.trim();
       password.trim();
    String output = "Something went wrong";
    if (name != "" && address != "" && email != "" && password != "") {
      try{
        await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
            UserDetails user =  UserDetails(name: name, address: address);
            await cloudFirestore.uploadNameAndAddressToDatabase(
              user: user,
               address: address);
              output = "Success";
    } on FirebaseAuthException catch (e){
        output = e.message.toString();
    }
  }else{
      output = "Please fill up all the fields!";
    }
    return output;
  }
  Future<String> signInUser(
      {required String email,
      required String password}) async{
    email.trim();
    password.trim();
    String output = "Something went wrong";
    if (email != "" && password != "") {
      try{
        await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
              output = "Success";
    } on FirebaseAuthException catch (e){
        output = e.message.toString();
    }
  }else{
      output = "Please fill up all the fields!";
    }
    return output;
  }


}