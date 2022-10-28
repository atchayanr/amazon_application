import 'package:amazon_application/utils/color_themes.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:flutter/material.dart';

class BannerAd extends StatefulWidget {
  const BannerAd({super.key});

  @override
  State<BannerAd> createState() => _BannerAdState();
}

class _BannerAdState extends State<BannerAd> {
  int currentAd=0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
       double smallAdHeight =screenSize.width/5;

    return GestureDetector(
      onHorizontalDragEnd: (_){
        if(currentAd == (bannerAd1.length - 1)){
          currentAd = -1;
        }
        setState(() {
          currentAd++;
        });
      },
      child: Column(
        children: [
          Positioned(
            bottom: 0,
            child: Stack(
              children: [
              Image.asset(
              bannerAd1[currentAd],
              width: double.maxFinite,
              ),
              Container(
              width:screenSize.width ,
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter, 
                  colors: [
                    backgroundColor,
                    backgroundColor.withOpacity(0),
                  ],
                )
              ),
              )
              ],
            ),

          ),
          Container(
            color:backgroundColor,
            width: screenSize.width,
            height: smallAdHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getSmallAdsFromIndex(0, smallAdHeight),
                getSmallAdsFromIndex(1, smallAdHeight),
                getSmallAdsFromIndex(2, smallAdHeight),
                getSmallAdsFromIndex(3, smallAdHeight),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget getSmallAdsFromIndex(int index,double height){
    return Container(
      child: Container(
        height: height,
        width: height,
        decoration: ShapeDecoration(
          color: Colors.white, 
          shadows: [BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5
            )],
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ) ,

        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(smallAds[index]),
              const SizedBox(height: 5,),
              Text(adItemNames[index])
            ]
            ),
        ),
      ),
    );
  }
}