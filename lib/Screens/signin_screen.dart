
import 'package:amazon_application/Screens/signup_screen.dart';
import 'package:amazon_application/resources/Authentication.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:amazon_application/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

import '../utils/color_themes.dart';
import '../widgets/main_button.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Authentication authentication =Authentication();
  bool isLoading = false;

  @override
  void dipose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
   Size screenSize = Utils().getScreenSize();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 20) ,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    amazonLogo,
                    height: screenSize.height * 0.10,
                    ),
                    Container(
                            height: screenSize.height * 0.6,
                            width: screenSize.width * 0.8,
                            padding: const EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 const Text(
                                "Sign-In",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 33),
                              ),
                                TextFieldWidget(
                                title: "Email",
                                controller: emailController,
                                obscureText: false,
                                 hintText: "Enter your email",
                        ),
                                TextFieldWidget(
                                hintText: 'Enter your password',
                                title: "Password",
                                controller: passwordController,
                                obscureText: true,
                                ),
                               Align(
                                alignment: Alignment.center,
                                 child: MainButton(
                                  color: yellowColor, 
                                   isLoading: isLoading,
                                  onPressed: ()async {
                                    setState(() {
                                      isLoading = true;
                                    });
                                   String output = await authentication.signInUser(
                                    email: emailController.text,
                                     password: passwordController.text);
                                     setState(() {
                                      isLoading = false;
                                    });
                                     if (output == "success") {
                                  //functions
                                } else {
                                  //error
                                  Utils().showSnackBar(
                                      context: context, content: output);
                                }
                                  },
                                  
                                    
                                  child: const Text("Sign In",style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 0.6,fontSize: 18
                                     ),),
                                  ),
                               )
                              ],
                            )
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text("   New to Amazon?",
                                style: TextStyle(color: Colors.grey,),
                                ),
                                const Padding(padding: EdgeInsets.symmetric(horizontal: 10) ),
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            MainButton(
                              
                              color: const Color.fromARGB(255, 213, 210, 210), 
                              isLoading: false,
                              onPressed: () {  
                                Navigator.pushReplacement(
                                  context, MaterialPageRoute(builder: (context){
                                    return const SignupScreen();
                                }));
                              },
                              child:const Text("Create your Amazon Account",
                              style: TextStyle(
                                letterSpacing: 0.6,
                                color: Colors.black,
                                ),)
                               )
                            
                ],
              ),
            ),
          ),
        ),
      ),
    );
    
  }
}