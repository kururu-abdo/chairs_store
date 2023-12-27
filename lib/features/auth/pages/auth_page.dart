import 'package:chairs_store/features/auth/components/login_widget.dart';
import 'package:chairs_store/features/auth/components/sigup_widget.dart';
import 'package:chairs_store/features/auth/components/social_widget.dart';
import 'package:chairs_store/features/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =  Provider.of<AuthController>(context);
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 60 ,horizontal: 20
          ),
        decoration: const BoxDecoration(
      gradient: LinearGradient(colors: 
      [ 
        Color(0xFF7694BF) , 
                Color(0xFF001A4A) , 

      ],  
    begin: Alignment.topCenter , 
    end: Alignment.bottomCenter
      
      )
          
        ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
 Image.asset('assets/images/chair_logo.png' ,  
            
            height: 50 ,width: 50,
            
            ),
const SizedBox(height: 60,) , 

 Align
 (alignment: AlignmentDirectional.centerStart,
   child: SizedBox(
    width: 350 ,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
   
   GestureDetector(
    onTap: () { 
      provider.changePage(0);
    },
    child: SizedBox(
    height: 70, 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
    Text("Sign in" , style: TextStyle( 
      color: provider.currentPage==0?Colors.white: const Color(0xFFD6D5D5)  , 
    
      fontSize: 36 , 
    
      fontWeight: provider.currentPage==0?FontWeight.bold:FontWeight.w500
    ),)
      ],
    ),
    ),
   ), 
   
   const Text("or",  style: TextStyle( 
   color: Color(0xFFD6D5D5)  , 
   
    fontSize: 24 ,
   
   ),)
   , 
   
   GestureDetector(
    onTap: () { 
      provider.changePage(1);
    },
    child: SizedBox(
    height: 70, 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
    Text("Sign up" , style: TextStyle( 
      color: provider.currentPage==1?Colors.white: const Color(0xFFD6D5D5)  , 
    
      fontSize: 36 , 
    
      fontWeight: provider.currentPage==1?FontWeight.bold:FontWeight.w500
    ),)
      ],
    ),
    ),
   ), 
   
   
   
   
   
      ],
    ),
   ),
 )

, const SizedBox(height: 60,) , 



Container(
  constraints: BoxConstraints(
    minHeight:MediaQuery.of(context).size.height/3,
    maxHeight: MediaQuery.of(context).size.height/3
  ),
  // maxHeight: MediaQuery.of(context).size.height/2,
  // flex: 1,
  child: PageView(
    controller: provider.pageController,
  children: [
  LoginWidget()
  
   ,
  
  RegisterWidget()
  ],
  onPageChanged: (index){ 
    provider.changePage(index);
  },
  
   ),
) , 






 const SizedBox(height: 60,) , 
const Text("or",  style: TextStyle( 
color: Colors.white  , 

  fontSize: 14 ,
  fontWeight: FontWeight.w500

),),
//  const Spacer(),
 const SizedBox(height: 60,) , 
 Row( 
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [  

  SocialWidget(
    icon: 'assets/images/facebook.png',
    tap: (){

    },
  ) , 

 SocialWidget(
    icon: 'assets/images/google.png',
    tap: (){

    },
  ) , 

 SocialWidget(
    icon: 'assets/images/apple.png',
    tap: (){

    },
  ) , 

],
)

            ],
          )


        )
        
      )
        );
  }
}