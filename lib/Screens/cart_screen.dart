import 'package:amazon_application/models/user_details.dart';
import 'package:amazon_application/utils/color_themes.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/widgets/cart_item.dart';
import 'package:amazon_application/widgets/main_button.dart';
import 'package:amazon_application/widgets/search_bar.dart';
import 'package:amazon_application/widgets/user_details_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  
   const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(
        hasBackButton: false,
        isReadOnly: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
               SizedBox(height: kAppBarHeight/2,),
              SizedBox(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("Proceed to Buy (5 items)",style: TextStyle(color: Colors.black),),
                   style: ElevatedButton.styleFrom(
                    backgroundColor:backgroundColor1,
                    padding: EdgeInsets.all(20)
                   ),
                    onPressed: (){}
                    ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("RESULTS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Expanded(child: CartItem())
                    ],
                  ),
                  
                  ),

              )
              ],
            ),
             UserDetailsBar(offset: 0, 
            userDetails: UserDetails
            (name: "Atchaya", 
            address: "Bangalore"
            )),
          ],
        ),
      ),
      
    );
  }
}