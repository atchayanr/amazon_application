import 'package:amazon_application/Screens/home_screen.dart';
import 'package:amazon_application/layouts/screen_layout.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class ProductScreen3 extends StatelessWidget {
  const ProductScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
      appBar: SearchBar(isReadOnly: true, hasBackButton: false,),      
persistentFooterButtons: [
  SizedBox(
    width: 90,
    height: 30,
    child: ElevatedButton(
       style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10),),
      onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>ScreenLayout()));
    }, 
    child: Text("Back",style: TextStyle(fontSize: 15),)
    ),
  )
],
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          ), 
          itemCount: productsList3.length,
          itemBuilder:((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(productsCategory3[index]),
            );
          }
      
    )
      )
    );
  }
}