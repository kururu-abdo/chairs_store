import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  final String? label;
  final Function(TapDownDetails)? onTap;
  const FilterWidget({super.key, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details){ 
        onTap!(details);
      },
      child: Container(
        decoration: BoxDecoration(
      
          borderRadius: BorderRadius.circular(10), 
          border: Border.all(
            width: .7 , color: Colors.white
          )
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(label! ,  style: const TextStyle(
            fontSize: 12 , 
            fontWeight: FontWeight.w300 , 
      
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}