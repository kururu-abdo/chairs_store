import 'package:flutter/material.dart';

class HomeLink extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  const HomeLink({super.key, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap!();
      },
      child: Container(
        child: Text(label! ,  
        
        style: const TextStyle( 
          color: Colors.white , 
          fontSize: 12 ,fontWeight: FontWeight.w300
        ),
        ),
      ),
    );
  }
}