import 'package:flutter/material.dart';

class ProductPackaging extends StatefulWidget {
  const ProductPackaging({super.key});

  @override
  State<ProductPackaging> createState() => _ProductPackagingState();
}

class _ProductPackagingState extends State<ProductPackaging> {
   bool _showPackages= false;


 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: AnimatedCrossFade(firstChild: 
      
          SizedBox( width: MediaQuery.of(context).size.width,
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
            
            
            
              
               
              const Text('Packaging', 
              
              style: TextStyle(
                color: Colors.white , 
                fontSize: 16 , 
                fontWeight: FontWeight.bold
                
              ),
              )
               
               
               
              , 
               
          IconButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                _showPackages=!_showPackages;
                setState(() {
                  
                });
               }, icon: const Icon(Icons.keyboard_arrow_down , 
               
               color: Colors.white,
               ))
               
                    ]),
          )



      , secondChild:
      
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,

         children: [
  SizedBox( width: MediaQuery.of(context).size.width,
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
            
            
            
              
               
              const Text('Packaging', 
              
              style: TextStyle(
                color: Colors.white , 
                fontSize: 16 , 
                fontWeight: FontWeight.bold
                
              ),
              )
               
               
               
              , 
               
          IconButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                _showPackages=!_showPackages;
                setState(() {
                  
                });
               }, icon: const Icon(Icons.keyboard_arrow_up) , 
               
               color: Colors.white,
               )
               
                    ]),
          ),
const SizedBox(height: 5,)

       ,
Column(
crossAxisAlignment: CrossAxisAlignment.start, 


children: [ 

tile('Cover for bar stool with backrest', """ 
Width: 19 cm
Height: 5 cm
Length: 21 cm
Weight: 0.32 kg
Package(s): 1""")




],
)

         ],
       )
      
      
      , crossFadeState:
       _showPackages?CrossFadeState.showSecond:CrossFadeState.showFirst, 
       duration: const Duration(milliseconds: 250)),
    );




  }


tile(String title , String details){
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
    Text(title , style: const TextStyle(
    fontSize: 14 , fontWeight: FontWeight.bold , 
    
    color: Color(0xFFFFFFFF)
    ),), 
    const SizedBox(height: 5,),
    SizedBox(width: MediaQuery.of(context).size.width, 
    child:  Text(details , style: const TextStyle(
    fontSize: 14 , fontWeight: FontWeight.w300 , 
    
    color: Colors.white
    ),),    
    
    )
    
      ],
    ),
  );
}

  
}