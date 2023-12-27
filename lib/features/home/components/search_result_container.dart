import 'package:chairs_store/common_widgets/product_widget.dart';
import 'package:chairs_store/features/home/components/home_link.dart';
import 'package:chairs_store/features/product/views/product_details.dart';
import 'package:flutter/material.dart';

class SearchResultContainer extends StatefulWidget {
  const SearchResultContainer({super.key});

  @override
  State<SearchResultContainer> createState() => _SearchResultContainerState();
}

class _SearchResultContainerState extends State<SearchResultContainer> {


  
  var products =   [

    {
      "name":"BERGMUND", 
      "desc":"Bar stool with backrest, black/Hallarp beige 110 cm", 
      "price":139.0, 
      "image":"assets/images/image 13.png", 
      "colors":[ 

        const Color(0xFF333333), 
          const Color(0xFF31005F), 
              const Color(0xFFFF006E), 
                 const Color(0xFFC4C4C4) , 
                   const Color(0xFFAFC5BF), 
                        const Color(0xFFE6EFFA) , 
                      const Color(0xFFE0E0E0) , 
      ],

    },

  {
      "name":"NEWMAN COUNTER", 
      "desc":"Bar stool with backrest, mint/ 100 cm", 
      "price":250.0, 
      "image":"assets/images/image 15.png", 
      "colors":[ 

        const Color(0xFF333333), 
          const Color(0xFF31005F), 
              const Color(0xFFFF006E), 
        
      ],

    },

  {
      "name":"DONAVAN GOLD", 
      "desc":"Bar stool back gold leaf and white vinyl cushion bar stool/ 95 cm", 
      "price":199.0, 
      "image":"assets/images/image 17.png", 
      "colors":[ 

        const Color(0xFF333333), 
          const Color(0xFF31005F), 
              const Color(0xFF9B8039), 
        
      ],

    },



{
      "name":"VOLANTE ROCHE", 
      "desc":"Bar stool with backrest, beige/ 100 cm", 
      "price":350.0, 
      "image":"assets/images/image 19.png", 
      "colors":[ 

        const Color(0xFF333333), 
          const Color(0xFFABABAB), 
              const Color(0xFFFF9F43), 
         const Color(0xFFE4D7CC), 
      ],

    },
{
      "name":"BERGMUND", 
      "desc":"Bar stool with backrest, beige/ 110 cm", 
      "price":300.0, 
      "image":"assets/images/image 21.png", 
      "colors":[ 

        const Color(0xFF333333), 
          const Color(0xFFABABAB), 
              const Color(0xFFF9AEB1), 
         const Color(0xFFAFC5BF), 
      ],

    },
{
      "name":"AVORIO ROCHE", 
      "desc":"Bar stool with backrest, blue velvet/ 110 cm", 
      "price":200.0, 
      "image":"assets/images/image 22.png", 
      "colors":[ 

        const Color(0xFF333333), 
          const Color(0xFFABABAB), 
              const Color(0xFFFFCE1F), 
         const Color(0xFFAFC5BF), 
         const Color(0xFFFFFFFF)
      ],

    },

{
      "name":"CAMILLE", 
      "desc":"Bar chair with backrest, Fraser Golden Olive/ 110 cm", 
      "price":150.0, 
      "image":"assets/images/image 30.png", 
      "colors":[ 

        const Color(0xFFECDB7D), 
          const Color(0xFFABABAB), 
              const Color(0xFFF9AEB1), 
         const Color(0xFFAFC5BF), 
         const Color(0xFFFFFFFF)
      ],

    },



{
      "name":"BETHANY", 
      "desc":"Bar stool with backrest, dark wood/ 110 cm", 
      "price":169.0, 
      "image":"assets/images/image 33.png", 
      "colors":[ 

        const Color(0xFF333333), 
         
      ],

    },






  ];
 
 
 
  @override
  Widget build(BuildContext context) {
    return  Column(
children: [
const HomeLink(
  label: '10 from 86 items',
)

, 
GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics() , 
  
  crossAxisCount: 2 ,  
  
  childAspectRatio: 175/275,
crossAxisSpacing: 5,
mainAxisSpacing: 10,
children: products.map((e) => Center(
  child: ProductWidget(
    onTap: (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_)=>const ProductDetails() )
      );
    },
    name: e['name'].toString(),
    desc: e['desc'].toString(),
    price: double.parse(e['price'].toString()),  
    image: e['image'].toString(),  
    colors: e['colors'] as List<Color>,
  ),
)).toList()

),
const SizedBox(height: 20,),
const HomeLink(
  label: 'View more',
)


],


    );
  }
}