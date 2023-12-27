import 'package:chairs_store/features/auth/components/auth_button.dart';
import 'package:chairs_store/features/auth/components/auth_password_field.dart';
import 'package:chairs_store/features/auth/components/auth_textfield.dart';
import 'package:chairs_store/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
   RegisterWidget({super.key});
   final TextEditingController _nameController = TextEditingController();
final FocusNode nameFocus = FocusNode(); 
final TextEditingController _emailController = TextEditingController();
final FocusNode emailFocus = FocusNode(); 

final TextEditingController _passwordController = TextEditingController();

final FocusNode passwordFocus = FocusNode(); 

  @override
  Widget build(BuildContext context) {
    return Column
    (children: [
AuthTextField(
textEditingController: _nameController,
focusNode: nameFocus,
nextfocus: emailFocus,
label: 'Name',
)
,  
AuthTextField(
textEditingController: _emailController,
focusNode: emailFocus,
nextfocus: passwordFocus,
label: 'Email',
)
,  
const SizedBox(height: 10,),
AuthPasswordField(
  textEditingController: _passwordController,
focusNode: passwordFocus,
nextfocus: null,
label: 'Password',
)
, 
const SizedBox(height: 20,),

AuthButtton(
  label: 'Sign up', 
  onTap: (){
Navigator.of(context).push(
  MaterialPageRoute(builder: (_)=> const HomePage())
);
  },
)


    ],);
  }
}