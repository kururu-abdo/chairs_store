import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? textEditingController;
 
  const SearchTextField({super.key, 
  this.hint, this.textEditingController, });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

controller: textEditingController, 

style: const TextStyle(
        fontSize: 12 , fontWeight: FontWeight.w500 , 
        color: Colors.black
      ),
    decoration: InputDecoration( 
filled: true, 
fillColor: const Color(0xFFF9F9F9),

suffixIcon: const Icon(Icons.search ,color: Color(0xFFBDBDBD),),
      hintText: hint, 
      
      hintStyle: const TextStyle(
        fontSize: 14 , fontWeight: FontWeight.w500 , 
        color: Color(0xFFD7D7D7)
      ),

      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white
        )
      ) ,  
      enabledBorder: const OutlineInputBorder(  borderSide: BorderSide(
          color: Colors.white
        )) ,  
      focusedBorder: const OutlineInputBorder(  borderSide: BorderSide(
          color: Colors.white
        ))
    ),
    );
  }
}