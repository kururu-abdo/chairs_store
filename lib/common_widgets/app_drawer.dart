import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  final Function()? onClose;
  const AppDrawer({super.key, this.onClose});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Drawer(
          
             width: size.width/1.2, 
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30)),
        
        
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20 ,  vertical: 20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [  
          
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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

widget.onClose!();



                }, icon: const Icon(Icons.close ,  size: 35,),
             
                  
                  )
                
                  ],
                ),
             const SizedBox(height: 50,)  , 

              Padding(padding: const EdgeInsets.symmetric(horizontal: 10) ,  
             
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [ 

const Text('My Account' , style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.w500 , 

color: Color(0xFFBDBDBD)
),), 

tile("Profile", () => {}),

tile("Address Book", () => {}),

tile("Payment Info", () => {}),
tile("Payout Info", () => {}),
tile("Cart", () => {}),
tile("My orders", () => {}),
    const SizedBox(height: 30,)  , 
const Text('Information' , style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.w500 , 

color: Color(0xFFBDBDBD)
),),

tile("Customer Support", () => {}),

tile("Privacy Policy", () => {}),

tile("Payment Info", () => {}),
tile("Services", () => {}),
tile("Terms of Service", () => {}),
tile("Language", () => {}, subTitle: 'English'),






    const SizedBox(height: 30,)  , 
const Text('Sign Out' , style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.w500 , 

color: Color(0xFFFF2343)
),),


             ],),
             )
        ]),
          ),
        ),
      ),
    );
  }

tile(String? label , Function() onTap ,{ String? subTitle}){

    return Container(
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [  

Text(label! , style: const TextStyle(
  fontSize: 24 ,fontWeight: FontWeight.bold, 
  color: Color(0xFF333333)
),)
, 

(subTitle!=null)? 
Row(
  mainAxisSize: MainAxisSize.min,
  children: [ 
    Text(subTitle , style: const TextStyle(
  fontSize: 14 ,fontWeight: FontWeight.w300 , 

  color: Color(0xFF333333)
),) , 
const SizedBox(width: 5,),
IconButton(onPressed: (){

}, icon: const Icon(Icons.arrow_forward ))
  ],
)

:  

IconButton(onPressed: (){

}, icon: const Icon(Icons.arrow_forward ))






        ],
      ),
    );
  
  


}



}