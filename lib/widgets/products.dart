import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String url;
  const Products({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(url),
        ),
      ),
    );
  }
}