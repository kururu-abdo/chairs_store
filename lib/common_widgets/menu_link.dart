import 'package:flutter/material.dart';

class MenuLink extends StatelessWidget {
  final String? label ;
  final String? subTitle;
  final Function()? onTap;
  const MenuLink({super.key, this.label, this.subTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [  

Text(label! , style: const TextStyle(
  fontSize: 24 ,fontWeight: FontWeight.bold
),)
, 


(subTitle!=null)? 
Row(
  mainAxisSize: MainAxisSize.min,
  children: [ 
    Text(subTitle! , style: const TextStyle(
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