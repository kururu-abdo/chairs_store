import 'package:flutter/material.dart';

class AddToCartWidget extends StatefulWidget {
  const AddToCartWidget({super.key});

  @override
  State<AddToCartWidget> createState() => _AddToCartWidgetState();
}

class _AddToCartWidgetState extends State<AddToCartWidget> {
  var count =1;



increament(){
  if (count>1) {
    count= count-1;
    setState(() {
      
    });
  }
}

decrement(){

    count= count+1;
    setState(() {
      
    });
  
}



  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 150 , child: Row(

  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  mainAxisSize: MainAxisSize.min,

  children: [
IconButton(onPressed: (){
increament();
},
 icon:  Icon(Icons.remove , color: 
 count>1? 
 Colors.white:
 const Color(0xFFC1C1C1),))


,
Container(
  width: 45,height: 45, 
  decoration: BoxDecoration(
    border: Border.all(
      width: 1, color:const Color(0xFFE2E2E2)
    ), 
    borderRadius: BorderRadius.circular(10)
  ),
  child:  Center(
    child: Text("$count" , style: const TextStyle(
      color: Colors.white ,fontSize: 18 , fontWeight: FontWeight.w500
    ),),
  ),
)
,

IconButton(onPressed: (){
decrement();
}, icon: const Icon(Icons.add , color:


 Colors.white,))



  ],
),);
  }
}