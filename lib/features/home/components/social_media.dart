import 'package:chairs_store/common_widgets/body_title.dart';
import 'package:flutter/material.dart';

class OurSocailMedia extends StatelessWidget {
  const OurSocailMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15 , horizontal: 15
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [ 
      
      BodyLabel( label: 'Check our social media',) , 
      
      SizedBox(height: 10,) , 
      Row(
        children: [
      SocialIcon(
        icon: 'assets/images/pinterest.png',
      ) ,    SocialIcon(
         icon: 'assets/images/insta.png',
      ) ,    SocialIcon(
         icon: 'assets/images/ic_face.png',
      ) , 
        ],
      )
      
      
        ],
      ),
    );
  }
}
class SocialIcon extends StatefulWidget {
  final String? icon;
  const SocialIcon({super.key, this.icon});

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),

      width: 35 ,height: 35, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8) , 
        color: Colors.black
      ),
      child: Center(child: Image.asset(widget.icon!),),
    );
  }
}