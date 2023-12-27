import 'package:chairs_store/common_widgets/home_menu.dart';
import 'package:chairs_store/features/home/components/home_link.dart';
import 'package:chairs_store/features/home/components/social_media.dart';
import 'package:chairs_store/features/product/views/components/add_to_cart_widget.dart';
import 'package:chairs_store/features/product/views/components/materials.dart';
import 'package:chairs_store/features/product/views/components/packaging.dart';
import 'package:chairs_store/features/product/views/components/reviews.dart';
import 'package:chairs_store/features/product/views/components/similar_products.dart';
import 'package:chairs_store/features/product/views/components/viewed_products.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  List<String> productImages  = [
   "assets/images/chair_details2.png",
       "assets/images/chair_details.png" , 

        "assets/images/chair_details2.png",
       "assets/images/chair_details.png", 

  "assets/images/chair_details2.png",
       "assets/images/chair_details.png" , 

        "assets/images/chair_details2.png",
       "assets/images/chair_details.png", 

  ];
  ScrollController  scrollController = ScrollController();
PageController pageController =PageController();
int currentPage=0;

final _scaffoldKey= GlobalKey<ScaffoldState>();
    addToCart(context) {
    SnackBar snackBar = SnackBar(
      
      content: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
padding: const EdgeInsets.only(
  top: 50
),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Text('BERGMUND bar stool was added to your cart.',
                    style: TextStyle(fontSize: 14 , 
                    
                    color: Colors.white , 
                    fontWeight: FontWeight.w300
                    )),
              ),
          
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
          
                      TextButton(onPressed: (){
          
                      }, child: const Text('show',  
                      
                       style: TextStyle(fontSize: 12 , 
                  
                  color: Colors.white , 
                  fontWeight: FontWeight.w500
                  )
                      
                      )), 
          
                      IconButton(onPressed: (){
           ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      }, icon: const Icon(Icons.close, color: Colors.white,))
                    ],
                  )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF333333),
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height-165 ,
          left: 0,
          right: 0
          ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
   
    return   



    
//     Scaffold( resizeToAvoidBottomInset: false,
// // backgroundColor: Theme.of(context).primaryColor,
//       body:  Container(width: MediaQuery.of(context).size.width, 
//   height: MediaQuery.of(context).size.height,
//         color: const Color(0xFF7694BF),
//         child: SizedBox.expand(

// child: 
// CustomScrollView(

  
//   slivers: [



//   SliverAppBar(
//       floating: true,
//       //                 //  floating: true,
//                 pinned: false ,
//                 elevation: 0,
//                     // toolbarHeight: 50,
//                     centerTitle: false,
//                     // excludeHeaderSemantics: true,
//                     // automaticallyImplyLeading: false,
//     leading: const SizedBox(),
//   flexibleSpace: 

// SizedBox(
//   width: MediaQuery.of(context).size.width, 
//   // height: MediaQuery.of(context).size.height/3 ,
// child: Stack( 
//   // fit: StackFit.expand,
// children: [  

// ClipRRect(
  
//   borderRadius: const BorderRadius.vertical(
//     bottom: Radius.circular(20)
//   ),
//   child: Image.asset('assets/images/chair_details.png' ,  
//   width: MediaQuery.of(context).size.width, 
//   height: MediaQuery.of(context).size.height/3 ,
//   fit: BoxFit.cover,
  
//   )),
 
 
//   Positioned(
//     top: 50,
//     child: 
    
    
//               SizedBox( width: MediaQuery.of(context).size.width, 
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                   IconButton(onPressed: (){
                  
//                   }, icon: const ImageIcon(AssetImage(
//                     'assets/images/chair_logo.png' ,
                    
                    
//                   ),
//                   size: 60,
//                     color: Colors.white,))
                  
//                   ,
                  
                  
//                   IconButton(onPressed: (){
                  
//                   }, icon: const ImageIcon(AssetImage(
//                     'assets/images/menu.png' ,
                    
                    
//                   ),
//                   size: 60,
//                     color: Colors.white,))
                  
//                     ],
//                   ),
//                 ),
//               ), 
        
    
//     ), 

//   Positioned(
    
//     bottom: 20,
//     child: SizedBox(
//         width: MediaQuery.of(context).size.width,
//       child: Center(child: 
      
      
//       Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(height: 5 ,width: 15, 
//           margin: const EdgeInsets.only(right: 5),
//           decoration: BoxDecoration( color: Colors.black, 
          
//           borderRadius: BorderRadius.circular(50)
//           ),
//           ),
//  Container(height: 5 ,width: 5, 
//            margin: const EdgeInsets.only(right: 5),
//           decoration: BoxDecoration( color: const Color(0xFFB3B3B3), 
          
//           borderRadius: BorderRadius.circular(50)
//           ),
//           ),

          
//         ],
//       ))))
// ],

// ),

// )

// , 
// expandedHeight:  MediaQuery.of(context).size.height/3,

//   )
   
   
// ,
//     const SliverToBoxAdapter(
    
//     )
   
   
   
   
//    ])  


// // Column(children: [  

// // SizedBox(
// //   width: MediaQuery.of(context).size.width, 
// //   height: MediaQuery.of(context).size.height/3 ,
// // child: Stack( 
// //   // fit: StackFit.expand,
// // children: [  

// // ClipRRect(
  
// //   borderRadius: const BorderRadius.vertical(
// //     bottom: Radius.circular(20)
// //   ),
// //   child: Image.asset('assets/images/chair_details.png' ,  
// //   width: MediaQuery.of(context).size.width, 
// //   height: MediaQuery.of(context).size.height/3 ,
// //   fit: BoxFit.cover,
  
// //   )),
 
 
// //   Positioned(
// //     top: 50,
// //     child: 
    
    
// //               SizedBox( width: MediaQuery.of(context).size.width, 
// //                 child: Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 15),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                   IconButton(onPressed: (){
                  
// //                   }, icon: const ImageIcon(AssetImage(
// //                     'assets/images/chair_logo.png' ,
                    
                    
// //                   ),
// //                   size: 60,
// //                     color: Colors.white,))
                  
// //                   ,
                  
                  
// //                   IconButton(onPressed: (){
                  
// //                   }, icon: const ImageIcon(AssetImage(
// //                     'assets/images/menu.png' ,
                    
                    
// //                   ),
// //                   size: 60,
// //                     color: Colors.white,))
                  
// //                     ],
// //                   ),
// //                 ),
// //               ), 
        
    
// //     ), 

// //   Positioned(
    
// //     bottom: 20,
// //     child: SizedBox(
// //         width: MediaQuery.of(context).size.width,
// //       child: Center(child: 
      
      
// //       Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Container(height: 5 ,width: 15, 
// //           margin: const EdgeInsets.only(right: 5),
// //           decoration: BoxDecoration( color: Colors.black, 
          
// //           borderRadius: BorderRadius.circular(50)
// //           ),
// //           ),
// //  Container(height: 5 ,width: 5, 
// //            margin: const EdgeInsets.only(right: 5),
// //           decoration: BoxDecoration( color: const Color(0xFFB3B3B3), 
          
// //           borderRadius: BorderRadius.circular(50)
// //           ),
// //           ),

          
// //         ],
// //       ))))
// // ],

// // ),

// // )


// // ],),


//          ) 

//       ));
  

    Scaffold( resizeToAvoidBottomInset: false,
// backgroundColor: Theme.of(context).primaryColor,
      body:  Container(width: MediaQuery.of(context).size.width, 
  height: MediaQuery.of(context).size.height,
        color: const Color(0xFF7694BF),
        child: SizedBox.expand(

child: Column(children: [  

SizedBox(
  width: MediaQuery.of(context).size.width, 
  height: MediaQuery.of(context).size.height/3 ,
child: Stack( 
  // fit: StackFit.expand,
children: [  

SizedBox(
   width: MediaQuery.of(context).size.width, 
  height: MediaQuery.of(context).size.height/3 ,
  child: PageView(
    onPageChanged: (index){
      currentPage=index;
      setState((){});
    },
    children: productImages.map((e) => 
    ClipRRect(
  
  borderRadius: const BorderRadius.vertical(
    bottom: Radius.circular(30)
  ),
  child: Image.asset(e ,  
  width: MediaQuery.of(context).size.width, 
  height: MediaQuery.of(context).size.height/3 ,
  fit: BoxFit.cover,
  
  )),
    
    ).toList(),
  ),
)

 ,
 
  Positioned(
    top: 50,
    child: 
    
    
              SizedBox( width: MediaQuery.of(context).size.width, 
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  IconButton(onPressed: (){
                  
                  }, icon: const ImageIcon(AssetImage(
                    'assets/images/chair_logo.png' ,
                    
                    
                  ),
                  size: 60,
                    color: Colors.black,))
                  
                  ,
                  
                  
                  IconButton(onPressed: (){
                  
                  }, icon: const ImageIcon(AssetImage(
                    'assets/images/menu.png' ,
                    
                    
                  ),
                  size: 60,
                    color: Colors.black,))
                  
                    ],
                  ),
                ),
              ), 
        
    
    ), 

  Positioned(
    
    bottom: 20,
    child: SizedBox(
        width: MediaQuery.of(context).size.width,
      child: Center(child: 
      
      
      Row(
        mainAxisSize: MainAxisSize.min,
        children:
        productImages.asMap().map((key, value) => 
        MapEntry(key ,  
        
        AnimatedContainer(
          
          duration: const Duration(
            milliseconds: 100
          ),
          height: 5 ,width:
        
        currentPage==key?
        
         15:5, 
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration( color: 
          
           currentPage==key?
          
          Colors.black:const Color(0xFFB3B3B3), 
          
          borderRadius: BorderRadius.circular(50)
          ),
          ),
        
        )
       
        ).values.toList()
        
        
//          [
          
// //  Container(height: 5 ,width: 5, 
// //            margin: const EdgeInsets.only(right: 5),
// //           decoration: BoxDecoration( color: const Color(0xFFB3B3B3), 
          
// //           borderRadius: BorderRadius.circular(50)
// //           ),
// //           ),

          
//         ],
      ))))
],

),

),  



 Expanded(
  child: SingleChildScrollView(
  controller: scrollController,
  physics: const ClampingScrollPhysics(),

  child:  Column(
  
    children: [ 

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(  crossAxisAlignment: CrossAxisAlignment.start,children: [ 
  
  
    const SizedBox(height: 20,), 
  
  const Text("BERGMUND" ,  
  
  style: TextStyle(
    fontSize: 30 ,fontWeight: FontWeight.bold , 
    color: Colors.white
  ),
  )
   , 
   const Text("Bar stool with backrest, black/Hallarp beige 125 cm" ,  
  
  style: TextStyle(
    fontSize: 14 ,fontWeight: FontWeight.w300 , 
    color: Colors.white
  ),
  )
  ,
  const SizedBox(height: 30,), 


Row(mainAxisSize: MainAxisSize.min, 

children: [const Color(0xFF014FCB) ,  
const Color(0xFF333333) ,  
const Color(0xFF4C6C55) ,  
const Color(0xFFBFBFBF) ,  
const Color(0xFFE4D7CC) ,  
const Color(0xFFE6EFFA) ,  
const Color(0xFFFF006E) ,  
const Color(0xFFFFFFFF) ,  
].map((e) => Container(
  margin: const EdgeInsets.only(
    right: 5
  ),
  height: 20,width: 20, 
  decoration: BoxDecoration(
    shape: BoxShape.circle , 
    color: e
  ),
)).toList(),
),



  const SizedBox(height: 30,), 
 const Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ 

Text("139€" , 

style: TextStyle(
  fontSize: 36, fontWeight: FontWeight.bold , 
  color: Colors.white


),

), 


AddToCartWidget()






  ],
), 

  const SizedBox(height: 30,), 
  Container(
    height: 1 , 
    width: MediaQuery.of(context).size.width,
    color: const Color(0xFFE2E2E2),
  ),
     const SizedBox(height: 20,), 

const Text("Product details" ,  
  
  style: TextStyle(
    fontSize: 16 ,fontWeight: FontWeight.bold , 
    color: Colors.white
  ),
  )
   , 

   const Text("The upholstery of the bar stool consists of straight polyester fibres with small gaps between them – providing comfy elasticity and better ventilation so you enjoy a pleasant temperature when sitting.The seat's bowl-shaped bottom is adapted for your sit bones and those of most of the world's population. And with an innovative technique, the seat's padding is shaped to maximise your comfort." ,  
  
  style: TextStyle(
    fontSize: 14 ,fontWeight: FontWeight.w300 , 
    color: Colors.white
  ),
  )


  ],),
)
,  

const SizedBox(height: 10,) , 


GestureDetector(
  onTap: (){
    addToCart(context);
  },
  child: Container(
    height: 75, 
    decoration:  BoxDecoration(
  color: Colors.black, 
  
  borderRadius: BorderRadius.circular(8)
    ),
    child: const Center(
  
      child: Text("Add to cart", 
      
      style: TextStyle(
        fontSize: 18 , fontWeight: FontWeight.bold , 
        color: Colors.white
      ),
      ),
    ),
  ),
),
const SizedBox(height: 10,) , 
 Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(  crossAxisAlignment: CrossAxisAlignment.start,children: [ 
  
  const Text("903.129.12" ,  
  
  style: TextStyle(
    fontSize: 16 ,fontWeight: FontWeight.bold , 
    color: Colors.white
  ),
  )
   , 
    const SizedBox(height: 20,) ,

Container(
    height: 1 , 
    width: MediaQuery.of(context).size.width,
    color:  const Color(0xFFE2E2E2),
  ),
const ProductReviews(), 


 const SizedBox(height: 20,) ,


Container(
    height: 1 , 
    width: MediaQuery.of(context).size.width,
    color:  const Color(0xFFE2E2E2),
  ),

 const SizedBox(height: 20,) ,

const ProductMaterials(), 
const SizedBox(height: 10,) ,
const ProductPackaging(),


const SizedBox(height: 20,) ,
Container(
    height: 1 , 
    width: MediaQuery.of(context).size.width,
    color:  const Color(0xFFE2E2E2),
  ),

    const SizedBox(height: 20,) ,

const SimilarProducts(),
  const SizedBox(height: 20,) ,
    const Center(
      child: HomeLink(label: 'Back to top',    
      




      ),
    ), 

  const SizedBox(height: 50,) ,
const ViewedProducts()

  ])

)
, 
const OurSocailMedia() , 

 const SizedBox(height: 20,) ,

 const HomeMenu()


  ]
  )
  )
 )











],),


         ) 

      ));
  



  }
}