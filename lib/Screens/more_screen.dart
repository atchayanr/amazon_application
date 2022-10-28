import 'package:amazon_application/Screens/signin_screen.dart';
import 'package:amazon_application/utils/color_themes.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:amazon_application/widgets/main_button.dart';
import 'package:amazon_application/widgets/more_category.dart';
import 'package:amazon_application/widgets/search_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:amazon_application/resources/Authentication.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  //  final FirebaseAuth auth = FirebaseAuth.instance;

  // signOut() async {
  //   await auth.signOut();
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => const SigninScreen()));
  // }
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor:const Color(0xffa2e0eb) , 
        appBar: SearchBar(isReadOnly: true, hasBackButton: false),
      
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.2 / 3.5,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
          ), 
          itemCount: categoryLists.length,
          itemBuilder: (context,index) => MoreCategory(index: index,)
          
          ),
          persistentFooterButtons: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){
                      // signOut();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const SigninScreen())));
                    }, 
                    child: const Text("Sign Out",style: TextStyle(color: Colors.black,fontSize: 16,)
                    ,),
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(yellowColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                    ) ,
                    ),
                )
               
              ],
            )
          ],
      );
       
  }
}
