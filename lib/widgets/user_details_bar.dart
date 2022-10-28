import 'package:amazon_application/models/user_details.dart';
import 'package:amazon_application/utils/color_themes.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:flutter/material.dart';

class UserDetailsBar extends StatelessWidget {
  final double offset;
  final UserDetails userDetails;
  const UserDetailsBar({super.key, required this.offset, required this.userDetails});

  @override
  Widget build(BuildContext context) {
    Size screenSize =Utils().getScreenSize();
    return Positioned(
      top: -offset/3,
      child: Container(
        height: kAppBarHeight/2,
        width: screenSize.width,
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors:lightBackgroundaGradient,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight
             )
        ),
        padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20),
          child: Row(
            children: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.grey[900],),
            ),
            SizedBox(
              width: screenSize.width *0.7,
              child: Text("Deliver to ${userDetails.name} - ${userDetails.address} ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[900]),),
            )
          ]),
        ),
    );
    
  }
}