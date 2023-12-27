import 'package:flutter/material.dart';

class AuthButtton extends StatelessWidget {
  final String? label; 
  final Function()? onTap;
  const AuthButtton({super.key, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap!();
      },
      child: Container(
      height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF333333)  , 
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            label! , 

            style: const TextStyle(
              fontWeight: FontWeight.w500 , 
              color: Colors.white , 
              fontSize: 14
            ),
          ),
        ),
      ),
    );
  }
}