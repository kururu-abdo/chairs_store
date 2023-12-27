import 'package:flutter/material.dart';

class BodyLabel extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  const BodyLabel({super.key, this.label, this.onTap});

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
          fontSize: 18 ,fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}