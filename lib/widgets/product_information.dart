import 'package:amazon_application/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  final String productName;
  final double cost;
  final String sellerName;
  const ProductInformation({super.key, required this.productName, required this.cost, required this.sellerName});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return SizedBox(
      width:screenSize.width ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(productName,)
        ],
      ),
    );
  }
}