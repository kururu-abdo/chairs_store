import 'package:chairs_store/features/onBoarding/pages/intro_one.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
  // executes after build

   Future.delayed(const Duration(seconds: 3) , () {
Navigator.of(context).push(
  MaterialPageRoute(builder: (_)=> const IntroPageOne())
);
    });
});
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
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
          child: Center(
child:
            Image.asset('assets/images/chair_logo.png' ,  
            
            height: 200 ,width: 200,
            
            )
          ),
        ),
      ),
    );
  }
}