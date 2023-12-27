import 'package:flutter/material.dart';

class AuthPasswordField extends StatefulWidget {
  final String? label;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final FocusNode? nextfocus;
  const AuthPasswordField({super.key, this.label, this.textEditingController, this.focusNode, this.nextfocus});

  @override
  State<AuthPasswordField> createState() => _AuthPasswordFieldState();
}

class _AuthPasswordFieldState extends State<AuthPasswordField> {
 bool _isHidden=true;



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
        
        controller: widget.textEditingController, 
        focusNode: widget.focusNode,
        onFieldSubmitted: (str){
        if (widget.nextfocus!=null) {
          widget.nextfocus!.requestFocus();
        }
        },
        style: const TextStyle(
            fontSize: 12 , fontWeight: FontWeight.w500 , 
            color: Colors.white
          ),

          obscureText: _isHidden,
        decoration: InputDecoration( 
        
          labelText: widget.label, 
          suffixIcon: IconButton(onPressed: (){
_isHidden = !_isHidden;
setState((){});

          }, icon: Icon(
            !_isHidden? Icons.visibility: Icons.visibility_off , 
            color: Colors.white,
          )),
          
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
        ),
      
      const SizedBox(height: 15, ) , 
      Align( 
        alignment: AlignmentDirectional.centerEnd, 
        child:  TextButton(onPressed: (){

        }, child: const Text('Forgot password?' ,  
        style: TextStyle(
            fontSize: 12 , fontWeight: FontWeight.w500 , 
            color: Colors.white
          ),
        
        )),
      )
      
      
      
      ],
    );
  }
}