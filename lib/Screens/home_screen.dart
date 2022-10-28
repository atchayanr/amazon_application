import 'package:amazon_application/Screens/product_screen2.dart';
import 'package:amazon_application/Screens/product_screen3.dart';
import 'package:amazon_application/Screens/products_screen.dart';
import 'package:amazon_application/models/user_details.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/widgets/Categories_list.dart';
import 'package:amazon_application/widgets/banner_ad.dart';
import 'package:amazon_application/widgets/products.dart';
import 'package:amazon_application/widgets/products_list.dart';
import 'package:amazon_application/widgets/search_bar.dart';
import 'package:amazon_application/widgets/user_details_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  double offset = 0;

  @override
  void initState(){
    super.initState();
    controller.addListener((){
    setState(() {
  offset = controller.position.pixels;
     });
    });
  }
  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(
        isReadOnly: true,
        hasBackButton: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller:controller ,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: kAppBarHeight/2,
                ),
                const CategoriesList(),
                const BannerAd(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => ProductScreen())));
                  },
                  child: const ProductsList(title: "Grab these deals now", children: [
                    Products(url: "/images/deals1.jpg"),
                    Products(url: "/images/deals2.jpg"),
                    Products(url: "/images/deals3.jpg"),
                    Products(url: "/images/deals4.jpg"),
                    Products(url: "/images/deals5.jpg"),
                    Products(url: "/images/deals6.jpg") 
                  ]),
                ),
                 GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => ProductScreen2())));
                  },
                   child: const ProductsList(title: "Upto 70% off | kitchen and dining products", children: [
                    Products(url: "/images/kitchen1.png"),
                    Products(url: "/images/kitchen2.png"),
                    Products(url: "/images/kitchen3.png"),
                    Products(url: "/images/kitchen4.png"),
                    Products(url: "/images/kitchen5.png"),
                                 ]),
                 ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => ProductScreen3())));
                  },
                  child: const ProductsList(title: "Top offers on brands", children: [
                    Products(url: "/images/top1.png"),
                    Products(url: "/images/top2.png"),
                    Products(url: "/images/top3.png"),
                    Products(url: "/images/top4.png"),
                    Products(url: "/images/top5.png"),
                  ]),
                )
              ],
            ),
          ),
          UserDetailsBar(
            offset: offset,
            userDetails: UserDetails(
              name: "Atchaya",
              address: "Bangalore"
             ),)
        ],
      ),
    );
  }
}