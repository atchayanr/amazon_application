import 'package:amazon_application/utils/constants.dart';
import 'package:flutter/material.dart';

class MoreCategory extends StatelessWidget {
  final index;
  const MoreCategory({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
      }),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              spreadRadius: 1,
            )
          ]
        ),
        child: Container(
          child: Center(
            child: Column(
               mainAxisSize:MainAxisSize.min,
               children: [
                Image.network(moreCategoryList[index]),
                Padding(
                  padding:EdgeInsets.all(10),
                  child: Text(
                    categoryLists[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5
                      ),
                      ),
                   )
               ],
            ),
          ),
        ),
      ),
    

    );
    
  }
}