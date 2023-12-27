import 'package:chairs_store/features/auth/pages/auth_page.dart';
import 'package:flutter/material.dart';

class IntroPageOne extends StatefulWidget {
  const IntroPageOne({super.key});

  @override
  State<IntroPageOne> createState() => _IntroPageOneState();
}

class _IntroPageOneState extends State<IntroPageOne> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
// backgroundColor: Theme.of(context).primaryColor,
      body:  SizedBox.expand(
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
          
          
          // Theme.of(context).primaryColor, 
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Column(
            children: [
                  const SizedBox(height: 50,) , 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            IconButton(onPressed: (){
            
            }, icon: const ImageIcon(AssetImage(
              'assets/images/chair_logo.png' ,
              
              
            ),
            size: 60,
              color: Colors.white,))
            
            ,
            
            
            IconButton(onPressed: (){
            
            }, icon: const ImageIcon(AssetImage(
              'assets/images/menu.png' ,
              
              
            ),
            size: 60,
              color: Colors.white,))
            
              ],
            ), ],
                   )
            
            
            ,
            const Text(
              "Chairs not only for you" , 
            maxLines: 2,
              style: TextStyle(
                fontSize: 48 ,fontWeight: FontWeight.bold , 
                color: Colors.white
              ),
            )
            ,
            
            Image.asset('assets/images/chair1.png' ,  height: 325,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () { 
                  
                      //home or auth page
                      
                    },
                    child: Container(
                      height: 50 ,
                      decoration:  BoxDecoration(
                        color: Colors.white , 
                    
                        borderRadius: BorderRadius.circular(
                          10
                        )
                      ),
                      child: const Center(
                        child: Text('Getting Started'),
                      ),
                    ),
                  ),
                ),
             const SizedBox(width: 10,),
                Expanded(
                  child: GestureDetector(
                    onTap: () { 
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_)=> const AuthPage()  )
                  );
                      //home or auth page
                      //page
          
                    },
                    child: Container(
                      height: 50 ,
                      decoration:  BoxDecoration(
                        color: 
                        Colors.black,
                        
                        //  const Color(0xFF333333)
                        //   , 
                    
                        borderRadius: BorderRadius.circular(
                          10
                        )
                      ),
                      child:  const Center(
                        child: Text('Create Account' , 
                        
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
             
             
             
              ],
            )
            ,
             const SizedBox(height: 100,) , 
            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}