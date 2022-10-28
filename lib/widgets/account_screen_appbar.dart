import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:flutter/material.dart';

import '../utils/color_themes.dart';

class AccountScreenAppBar extends StatelessWidget with PreferredSizeWidget {
   AccountScreenAppBar({Key? key}): preferredSize = const Size.fromHeight(kAppBarHeight),super(key: key);

  @override
  final Size preferredSize;
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Container(
      height: kAppBarHeight,
      width: screenSize.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: backgroundGradient,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.network(
              amazonLogo,
              height:screenSize.height * 0.5,
              width: screenSize.width * 0.2,),
          ),
          Row(
            children: [
             IconButton(onPressed: (){}, 
             icon:const Icon(
             Icons.notifications_none_outlined,
             color: Colors.black,
             size: 25,
             ),
         ),
             IconButton(onPressed: (){},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 25,
            )
            )
              
            ],
          )
        ],
      ),
    );
  }
}