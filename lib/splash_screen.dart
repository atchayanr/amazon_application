import 'package:amazon_application/Screens/signin_screen.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Size screenSize = Utils().getScreenSize();
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }
 _navigatetohome()async{
  await Future.delayed(const Duration(milliseconds: 1700),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const SigninScreen()));
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          amazonLogo,
           height: screenSize.height * 0.15,
           width: screenSize.width * 0.4,
           ),
      ),
    );
  }
}