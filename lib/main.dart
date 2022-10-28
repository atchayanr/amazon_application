import 'package:amazon_application/Screens/signin_screen.dart';
import 'package:amazon_application/layouts/screen_layout.dart';
import 'package:amazon_application/splash_screen.dart';
import 'package:amazon_application/utils/color_themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
   await Firebase.initializeApp(options: const FirebaseOptions(
       apiKey: "AIzaSyCS-MUVmoJskQjZDhXjNdm4hF35QenftJU",
       authDomain: "app-daea2.firebaseapp.com",
       projectId: "app-daea2",
       storageBucket: "app-daea2.appspot.com",
  messagingSenderId: "727966980969",
  appId: "1:727966980969:web:e6515b15a4c6319c833bf8"
    ));
  }else{
    await Firebase.initializeApp();
  }
  runApp(const AmazonApp());
}

class AmazonApp extends StatelessWidget {
  const AmazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,

      ),
     home:StreamBuilder(
      stream:FirebaseAuth.instance.authStateChanges(),
      builder: (context,AsyncSnapshot<User?> user) {
       if (user.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                );
            }else if(user.hasData){
             return const ScreenLayout();
      }else{
        return const SplashScreen();
      }
  }),
    );
    
  }
}