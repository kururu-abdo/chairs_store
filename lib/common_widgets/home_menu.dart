import 'package:chairs_store/common_widgets/menu_link.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300 ,
      width: double.infinity,
      padding: const EdgeInsets.all(
        20
      ),
      decoration: const BoxDecoration(
        color: Colors.white , 

        
      ),
      child: Column(children: [   

MenuLink(
label: 'Customer Support',
onTap: (){

},
) , 

MenuLink(
label: 'Privacy Policy',
onTap: (){
  
},
) , 

MenuLink(
label: 'Services',
onTap: (){
  
},
) ,
MenuLink(
label: 'Terms of Service',
onTap: (){
  
},
) ,

MenuLink(
label: 'Language',
subTitle: 'English',
onTap: (){
  
},
) ,

      ],),
    );
  }
}
