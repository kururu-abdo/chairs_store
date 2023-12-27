import 'package:flutter/material.dart';

class ProductReviews extends StatefulWidget {
  const ProductReviews({super.key});

  @override
  State<ProductReviews> createState() => _ProductReviewsState();
}

class _ProductReviewsState extends State<ProductReviews> {
   bool _showRev= false;

   var reviews  = 
[
  {
    "name":"Kururu" , 
    "message":"Very good product , i highly recommend it", 
    "stars":3, 
    "image":"assets/images/me.png", 

  }, 
{
    "name":"Abdo" , 
    "message":"it is not that good", 
    "stars":2, 
    "image":"assets/images/me.png", 

  }, 




];
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
            
            
            
              
               
              const Text('Review', 
              
              style: TextStyle(
                color: Colors.white , 
                fontSize: 16 , 
                fontWeight: FontWeight.bold
                
              ),
              )
               
               
               
              , 
               
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [ 


                   Row(
                mainAxisSize: MainAxisSize.min,
               children: List.generate(5, (index) => Padding(
                padding:  EdgeInsets.only(right:
                index== 5-1? 0:
                
                 2),
                child: Icon(Icons.star, 
                
                color:  index<3?Colors.white:Colors.black,
                ),
               )),
               ) , 
               const SizedBox(width: 2,) , 
               IconButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                _showRev=!_showRev;
                setState(() {
                  
                });
               }, icon: const Icon(Icons.keyboard_arrow_down , 
               
               color: Colors.white,
               ))
               
                ],
              )
               
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
            
            
            
              
               
              const Text('Review', 
              
              style: TextStyle(
                color: Colors.white , 
                fontSize: 16 , 
                fontWeight: FontWeight.bold
                
              ),
              )
               
               
               
              , 
               
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [ 


                   Row(
                mainAxisSize: MainAxisSize.min,
               children: List.generate(5, (index) => Padding(
                padding:  EdgeInsets.only(right:  index== 5-1? 0:
                
                 2),
                child: Icon(Icons.star, 
                
                color:  index<3?Colors.white:Colors.black,
                ),
               )),
               ) , 
               const SizedBox(width: 5,) , 
               IconButton(onPressed: (){
                _showRev=!_showRev;
                setState(() {
                  
                });
               }, icon: const Icon(Icons.keyboard_arrow_up , 
               
               color: Colors.white,
               ))
               
                ],
              )
               
                    ]),
          )


,
const SizedBox(height: 5,)

       ,
           ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: reviews.length,
            shrinkWrap: true,
            itemBuilder: (_ , index){
              return 
              Container(
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.only(bottom: 5),
               decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(10) , 

               ),

               child: Row(

crossAxisAlignment: CrossAxisAlignment.center ,
children: [ 

ClipRRect(

  borderRadius: BorderRadius.circular(8),
  child: Image.asset(reviews[index]['image'].toString() , 
  
  width: 100, 
  height: 100, 


  
  ),
),
const SizedBox(width: 8,) , 
Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(reviews[index]['name'].toString()  ,  
    
    
    style: const TextStyle(
      fontWeight: FontWeight.bold ,fontSize: 16
    ),
    ),
     
    Row(
      mainAxisSize: MainAxisSize.min,
children: List.generate(5, (index) => Padding(
  padding: const EdgeInsets.only(right: 2),
  child: Icon(Icons.star, 
  
  color:  index
  <3?Colors.amber:Colors.grey,
  size: 15,
  ),
)),
) , 
 SizedBox(width: 220,

child:  Text(reviews[index]['message'].toString()  ,  
    
    maxLines: 5, 
    overflow: TextOverflow.ellipsis,
    style: const TextStyle(
      fontWeight: FontWeight.w500 ,fontSize: 16
    ),
    ),

) ,


  ],
)




],

               ),
              )
              
              ;
            
           
           
           
           }),
         ],
       )
      
      
      , crossFadeState:
       _showRev?CrossFadeState.showSecond:CrossFadeState.showFirst, 
       duration: const Duration(milliseconds: 250)),
    );




  }
}