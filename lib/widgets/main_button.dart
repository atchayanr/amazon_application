import 'package:flutter/material.dart';

import '../utils/utils.dart';

class MainButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool isLoading;
  final VoidCallback onPressed;

  const MainButton({super.key, required this.child, required this.color, required this.isLoading, required this.onPressed});

  @override
  Widget build(BuildContext context) {
  Size screenSize = Utils().getScreenSize();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
           shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.black,
              width: 0.5
          ),
            borderRadius: BorderRadius.circular(5.0)
        ),     
        // ignore: deprecated_member_use
        primary: color,
         fixedSize: Size(
            screenSize.width * 0.5,
            40,
          )),
          onPressed:onPressed,
          child: !isLoading
          ? child
          : const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  
                ),
              ),
            ),
    );
  }
}