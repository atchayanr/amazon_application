import 'package:amazon_application/Screens/search_screen.dart';
import 'package:amazon_application/utils/color_themes.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget with PreferredSizeWidget {
  final bool isReadOnly;
  final bool hasBackButton;
    SearchBar({
    Key? key, required this.isReadOnly, required this.hasBackButton,
    
  })  : preferredSize = const Size.fromHeight(kAppBarHeight),
        super(key: key);

  @override
   final Size preferredSize;

   OutlineInputBorder border =OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: const BorderSide(color: Colors.grey,width: 1,),
    );
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Container(
      height: kAppBarHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: backgroundGradient,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
          )
      ),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          hasBackButton
              ? IconButton(
                  onPressed: () {
                   Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back))
              : Container(),
              SizedBox(
                width: screenSize.width * 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 8,
                        spreadRadius: 0.2,
                        offset: const Offset(0,5),
                      )
                    ]
                  ),
                  child: TextField(
                    readOnly: isReadOnly,
                    onTap: (){
                      if(isReadOnly){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchScreen()));
                      }
                    },
                    decoration: InputDecoration(  
                      prefixIcon: const Icon(Icons.search,color:Colors.black ),
                      suffixIcon: const Icon(Icons.center_focus_strong_outlined,color: Colors.grey,),
                      hintText: "Search Amazon",
                      fillColor: Colors.white,
                      filled: true,
                      border: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ),
              IconButton(
                 icon:const Icon(Icons.mic_none_outlined), 
                 onPressed: () {  },
                 
                 )
             
        ]     
       )
       
    );
  }
}