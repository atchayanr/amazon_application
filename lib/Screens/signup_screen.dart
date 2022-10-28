

import 'package:amazon_application/Screens/signin_screen.dart';
import 'package:amazon_application/resources/Authentication.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:flutter/material.dart';

import '../utils/color_themes.dart';
import '../utils/constants.dart';
import '../widgets/main_button.dart';
import '../widgets/text_field_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Authentication authentication = Authentication();
  bool isLoading = false;

@override
void dipose(){
  super.dispose();
  nameController.dispose();
  emailController.dispose();
  addressController.dispose();
  passwordController.dispose();
}
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
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
                    SizedBox(
                      height: screenSize.height *0.7,
                      child: FittedBox(
                        child: Container(
                                height: screenSize.height * 0.85,
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
                                    "Sign-Up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 33),
                                  ),
                                    TextFieldWidget(
                                    hintText: 'Enter your Name',
                                    title: "Name",
                                    controller: nameController,
                                    obscureText: false,
                                    ),
                                    TextFieldWidget(
                                    hintText: 'Enter your address',
                                    title: "Address",
                                    controller: addressController,
                                    obscureText: false,
                                    ),
                                    TextFieldWidget(
                                    hintText: 'Enter your email',
                                    title: "Email",
                                    controller: emailController,
                                    obscureText: false,
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
                                        onPressed: ()async{
                                          setState(() {
                                            isLoading = true;
                                          });
                                        String output = await authentication.signUpUser(
                                            name:nameController.text ,
                                            address:addressController.text,
                                            email:emailController.text ,
                                            password:passwordController.text
                                       );
                                       setState(() {
                                            isLoading = false;
                                          });
                                       if (output == "Success"){
                                         // ignore: use_build_context_synchronously
                                         Navigator.pushReplacement(
                                          context, 
                                          MaterialPageRoute(
                                            builder: (_)=> const SigninScreen()
                                            ));
                                       }else{
                                        Utils().showSnackBar(
                                          context: context, content: output);
                                       }
                                        },
                                      child: const Text("Sign Up",style: TextStyle(color: Colors.black,letterSpacing: 0.6,fontSize: 18),),
                                      ),
                                   )
                                  ],
                                )
                                ),
                      ),
                    ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text("Already a customer?",style: TextStyle(fontSize: 18),),
                                 TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const SigninScreen())));
                                 }, 
                                //  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(backgroundColor)),
                                style: TextButton.styleFrom(
                                  foregroundColor: backgroundColor,
                                  backgroundColor: backgroundColor,),
                                 child: const Text("Sign in",
                                 style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue),))
                              ],
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