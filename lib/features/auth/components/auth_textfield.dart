import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String? label;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final FocusNode? nextfocus;
  const AuthTextField({super.key, this.label, this.textEditingController, this.focusNode, this.nextfocus});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

controller: textEditingController, 
focusNode: focusNode,
onFieldSubmitted: (str){
if (nextfocus!=null) {
  nextfocus!.requestFocus();
}
},
style: const TextStyle(
        fontSize: 12 , fontWeight: FontWeight.w500 , 
        color: Colors.white
      ),
    decoration: InputDecoration( 

      labelText: label, 
      
      labelStyle: const TextStyle(
        fontSize: 12 , fontWeight: FontWeight.w500 , 
        color: Colors.white
      ),

      border: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white
        )
      ) ,  
      enabledBorder: const UnderlineInputBorder(  borderSide: BorderSide(
          color: Colors.white
        )) ,  
      focusedBorder: const UnderlineInputBorder(  borderSide: BorderSide(
          color: Colors.white
        ))
    ),
    );
  }
}