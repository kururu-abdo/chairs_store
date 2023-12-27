import 'package:flutter/material.dart';

typedef onTap = Function();

class SocialWidget extends StatelessWidget {
  final String? icon;
  final onTap? tap;
  const SocialWidget({super.key, this.icon, this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 50 , height: 50 , 
      
        decoration: BoxDecoration(
          color: Colors.white , 
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(child: Image.asset(icon!  , 
        height: 25, width: 25,
        
        
         ),),
      ),
    );
  }
}