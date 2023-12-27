import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String? image;
  final String? name;
  final List<Color>? colors;
final double? price;
final String? desc;
final Function()? onTap;
  const ProductWidget({super.key, this.image, this.name, this.colors, this.price, this.desc, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){ 
        onTap!();
      },
      child: Container(
        // height: 350, 
        width: 175 , 
      
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10) 
        ),
      
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      SizedBox(
        width: 100,
        child: Wrap(
      runSpacing: 3,
      children: colors!.map((e) => Container(
        height: 10 ,width: 10,
        margin: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(shape: BoxShape.circle ,  color: e),
      )).toList(),
        ),
      )
      ,
      const SizedBox(height: 15,)
      
      , 
      Center(
        child: Image.asset(
      image!,  
        
        
      height: 170, 
      width: 145, 
      fit: BoxFit.contain,
        ),
      ),
      
      const Spacer(),
      
      
      
      
      
      Text(name!  ,  maxLines: 1, style: const TextStyle( 
      
        fontSize: 14 , fontWeight: FontWeight.w500
      ),),  
      SizedBox(
        width: 170,
      
        child: Text(desc!  ,  maxLines: 2, style: const TextStyle( 
      
        fontSize: 10 , fontWeight: FontWeight.w300,  
      
        color: Color(0xFF858585)
      ),),
      ), 
      
      // const Spacer(), 
      
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
      Text("\$$price"  ,  maxLines: 2, style: const TextStyle( 
      
        fontSize: 18 , fontWeight: FontWeight.bold,  
      
      ),),
      
      
      Container(
        width: 30 , height: 30 , 
      
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8) , 
      color: const Color(0xFF333333)
        ),
      
        child: const Center(
      child: Icon(Icons.add ,size: 15 ,color: Colors.white,  ),
        ),
      )
      
      
        ],
      )
      
      
      
      
        ],
      ),
      
      
      
      
      ),
    );
  }
}