import 'package:flutter/material.dart';

class ProductMaterials extends StatefulWidget {
  const ProductMaterials({super.key});

  @override
  State<ProductMaterials> createState() => _ProductMaterialsState();
}

class _ProductMaterialsState extends State<ProductMaterials> {
   bool _showMaterials= false;


 
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
            
            
            
              
               
              const Text('Materials & care', 
              
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
                _showMaterials=!_showMaterials;
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
            
            
            
              
               
              const Text('Materials & care', 
              
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
                _showMaterials=!_showMaterials;
                setState(() {
                  
                });
               }, icon: const Icon(Icons.keyboard_arrow_up , 
               
               color: Colors.white,
               ))
               
                    ]),
          ),
const SizedBox(height: 5,)

       ,
Column(
crossAxisAlignment: CrossAxisAlignment.start, 

children: [

  tile("Cover for bar stool with backrest Fabric:", 
  
  "38% viscose/rayon, 62 % polyester"
  ) , 



  tile("Back fabric:", 
  
  "100 % polyester (100% recycled)"
  ) , 

tile("Leg:", 
  
  "Solid birch, Acrylic paint"
  ) , 

  tile("Seat frame:", 
  
  "Steel, Epoxy/polyester powder coating"
  ) , 

  tile("Backrest frame:", 
  
  "Steel"
  ) , 

  tile("Support panel:", 
  
  "Polyethylene plastic"
  ) , 

  tile("Backrest cushion/ Seat cushion:", 
  
  "100% polyester"
  ) , 

    tile("Lining:", 
  
  "Polyester wadding"
  ) , 

 tile("Bar stool with backrest", 
  
  "Machine wash, max 40°C, normal process.\nDo not bleach. \n Do not tumble dry.\n Do not iron.\n Professional dry cleaning in tetrachloroethene and hydrocarbons, normal process.\n Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth."
  ) , 


],

)




         ],
       )
      
      
      , crossFadeState:
       _showMaterials?CrossFadeState.showSecond:CrossFadeState.showFirst, 
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