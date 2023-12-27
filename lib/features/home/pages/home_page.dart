import 'package:chairs_store/common_widgets/app_drawer.dart';
import 'package:chairs_store/common_widgets/home_menu.dart';
import 'package:chairs_store/common_widgets/search_field.dart';
import 'package:chairs_store/features/auth/components/social_widget.dart';
import 'package:chairs_store/features/home/components/filter_widget.dart';
import 'package:chairs_store/features/home/components/home_link.dart';
import 'package:chairs_store/features/home/components/recommended_container.dart';
import 'package:chairs_store/features/home/components/search_result_container.dart';
import 'package:chairs_store/features/home/components/social_media.dart';
import 'package:chairs_store/utils/custom_shape.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

TapDownDetails? _tapDownDetails;
  OverlayEntry? _overlayEntry;
  OVERLAY_POSITION? _overlayPosition;

double? _statusBarHeight;
  double? _toolBarHeight;

//overlays
 
OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;

    var size = renderBox.size;

    var offset = renderBox.localToGlobal(Offset.zero);
    var globalOffset = renderBox.localToGlobal(_tapDownDetails!.globalPosition);

    _statusBarHeight = MediaQuery.of(context).padding.top;

    // TODO: Calculate ToolBar Height Using MediaQuery
    _toolBarHeight = 200;
    var screenHeight = MediaQuery.of(context).size.height;

    var remainingScreenHeight = screenHeight - _statusBarHeight! - _toolBarHeight!;
 double nipheight= 25;
    // if (globalOffset.dy > remainingScreenHeight / 2) {
    //   _overlayPosition = OVERLAY_POSITION.TOP;
    // } else {
      _overlayPosition = OVERLAY_POSITION.BOTTOM;
    // }
    return OverlayEntry(builder: (context) {
      return Positioned(
           top:  globalOffset.dy  +  50,
            width: MediaQuery.of(context).size.width,
                  height: 318+ 80,
        child: 
        Stack(children: [  
Positioned(
  
  top: -1, 
  // left: globalOffset.dx,
  child: nip()),  

 Positioned(
  top:   nipheight,
   child: GestureDetector(
                onTap: () {
                  _overlayEntry!.remove();
                },
                child:  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 318
                    ,
                    // MediaQuery.of(context).size.height/4,
                 decoration: BoxDecoration(  
                     color: Colors.white, 
                     borderRadius: BorderRadius.circular(8)
                 ),
                  ),
              ),
 ),

        ],)
        
        // Stack(
        //   children: <Widget>[
        //     GestureDetector(
        //       onTap: () {
        //         _overlayEntry!.remove();
        //       },
        //       child: Positioned(
        //         top:  globalOffset.dy+ 25  +  50,
        //         child: Container(
        //           width: MediaQuery.of(context).size.width,
        //           height: 318
        //           ,
        //           // MediaQuery.of(context).size.height/4,
        //           color: Colors.red,
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: 1,
        //       left: globalOffset.dx,
        //       // top: _overlayPosition == OVERLAY_POSITION.TOP
        //       //     ? _statusBarHeight! + _toolBarHeight!
        //       //     : offset.dy + size.height - 5.0,
        //       // width: 25,
        //       child: 
        //       nip()
              
        //       // Column(
        //       //   crossAxisAlignment: CrossAxisAlignment.start,
        //       //   children: <Widget>[
        //       //     // ignore: sdk_version_ui_as_code
        //       //     if (_overlayPosition == OVERLAY_POSITION.BOTTOM)
        //       //       nip(),
        //       //     body(context, offset.dy),
        //       //     // ignore: sdk_version_ui_as_code
        //       //     if (_overlayPosition == OVERLAY_POSITION.TOP)
        //       //       nip(),
        //       //   ],
        //       // ),
          
          
        //     )
        //   ],
        // ),
      
      
      
      );
    });
  }











ScrollController  scrollController = ScrollController();
final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return   
    Scaffold( 
      key: _scaffoldKey,
      drawer:  AppDrawer(

        onClose: (){ 
          _scaffoldKey.currentState!.closeDrawer();
        },
      ), 
      drawerEnableOpenDragGesture: false, 
      
      resizeToAvoidBottomInset: false,
// backgroundColor: Theme.of(context).primaryColor,
      body:  Container(
        color: const Color(0xFF7694BF),
        child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [  
        
        const SizedBox(height: 50,) , 

        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: 
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                IconButton(onPressed: (){
                
                }, icon: const ImageIcon(AssetImage(
                  'assets/images/chair_logo.png' ,
                  
                  
                ),
                size: 60,
                  color: Colors.white,))
                
                ,
                
                
                IconButton(onPressed: (){


_scaffoldKey.currentState!.openDrawer();


                }, icon: const ImageIcon(AssetImage(
                  'assets/images/menu.png' ,
                  
                  
                ),
                size: 60,
                  color: Colors.white,))
                
                  ],
                ),
             
             
             
              ), 
        
        
        
           //  const SizedBox(height: 20,),
              Align(
               alignment: AlignmentDirectional.centerStart,
               child: Padding(
                 padding: const EdgeInsets.symmetric(
                  horizontal: 15
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                 
                 
                 children: [
                 
                 const Text('Bar stools', style: TextStyle(
                   fontSize: 24 , fontWeight: FontWeight.bold , color: Colors.white
                 ),), 
                 const SizedBox(height: 10,) , 
                 SearchTextField(
                   textEditingController: TextEditingController(), 
                              hint: 'Search for a chair',
                 )
                 
                 ],
                 ),
               ),
             )
             , 
              
                const SizedBox(height: 20,)
              ,
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [  
               
               FilterWidget(
                 label: 'Sort',
                 onTap: (d){


setState(() {
            _tapDownDetails = d;
          });
          _overlayEntry = _createOverlayEntry();
          Overlay.of(context).insert(_overlayEntry!);
                 },
               ), 
                FilterWidget(
                 label: 'Price',
                 onTap: (d){


setState(() {
            _tapDownDetails = d;
          });
          _overlayEntry = _createOverlayEntry();
          Overlay.of(context).insert(_overlayEntry!);
                 },
               ), 
               
               const FilterWidget(
                 label: 'Material',
               ), 
               const FilterWidget(
                 label: 'Colour',
               ), 
               const FilterWidget(
                 label: 'Size',
               ), 
               const FilterWidget(
                 label: 'All filters',
               ), 
               
               
               
                 ],
               ),
             )         
                
        ,  

 Expanded(child: SingleChildScrollView(
  controller: scrollController,
  physics: const ClampingScrollPhysics(),

  child: Column(children: [ 
const SizedBox(height: 20,),
   const SearchResultContainer( ),
        
        
        const SizedBox(height: 20,),

 const RecommendContainer(),
const SizedBox(height: 20,),

        HomeLink(
          label: 'Back top',
          onTap: (){
            scrollController.jumpTo(
              0.0
            );
          },
        )
        , 
//recommend
 
        const OurSocailMedia()
      
        ,
        //  RecommendContainer(),

        // Spacer() , 
        const HomeMenu()

  ],),
))

        
          ],
        ),
        ),
      ));
    
    
      Scaffold( resizeToAvoidBottomInset: false,
// backgroundColor: Theme.of(context).primaryColor,
      body:  SizedBox.expand(
        child: Container(  
          decoration: const BoxDecoration(
    color: Color(0xFF7694BF),  

      
      
          
        ),
child:
CustomScrollView(

  
  slivers: [ 






  SliverAppBar(
      floating: false,
                      //  floating: true,
                pinned: true ,
                elevation: 0,
                    // toolbarHeight: 50,
                    centerTitle: false,
                    excludeHeaderSemantics: true,
                    automaticallyImplyLeading: false,
    leading: const SizedBox(),
  backgroundColor: const Color(0xFF7694BF),
            flexibleSpace: 
            
            Column(
children: [  


      const SizedBox(height: 50,) , 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            IconButton(onPressed: (){
            
            }, icon: const ImageIcon(AssetImage(
              'assets/images/chair_logo.png' ,
              
              
            ),
            size: 60,
              color: Colors.white,))
            
            ,
            
            
            IconButton(onPressed: (){
            
            }, icon: const ImageIcon(AssetImage(
              'assets/images/menu.png' ,
              
              
            ),
            size: 60,
              color: Colors.white,))
            
              ],
            ), 
          //     Align(
          //    alignment: AlignmentDirectional.centerStart,
          //    child: Column(
          //      crossAxisAlignment: CrossAxisAlignment.start,
             
             
          //    children: [
             
          //    const Text('Bar stools', style: TextStyle(
          //      fontSize: 24 , fontWeight: FontWeight.bold , color: Colors.white
          //    ),), 
          //    const SizedBox(height: 10,) , 
          //    SearchTextField(
          //      textEditingController: TextEditingController(), 
          //  hint: 'Search for a chair',
          //    )
             
          //    ],
          //    ),
          //  )
          //  , 
            
          //     const SizedBox(height: 20,)
          //   ,
          //  const Row(
          //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //    children: [  
           
          //  FilterWidget(
          //    label: 'Sort',
          //  ), 
          //  FilterWidget(
          //    label: 'Price',
          //  ), 
           
          //  FilterWidget(
          //    label: 'Material',
          //  ), 
          //  FilterWidget(
          //    label: 'Colour',
          //  ), 
          //  FilterWidget(
          //    label: 'Size',
          //  ), 
          //  FilterWidget(
          //    label: 'All filters',
          //  ), 
           
           
           
          //    ],
          //  )         
                
           
                
            
            ],
         

 
    
            )
            
            
            ,
            expandedHeight: 50.0,
          ),

          SliverPersistentHeader(
            pinned: true,
            floating: true,
                      delegate: SliverDelegate(
                      
          
          child:  
           Padding(padding: const EdgeInsets.symmetric(
            vertical: 0
           ),
            // height: 300,
             child: Column(
              children: [ 
             
                
             
             //  const SizedBox(height: 20,),
              Align(
               alignment: AlignmentDirectional.centerStart,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
               
               
               children: [
               
               const Text('Bar stools', style: TextStyle(
                 fontSize: 24 , fontWeight: FontWeight.bold , color: Colors.white
               ),), 
               const SizedBox(height: 10,) , 
               SearchTextField(
                 textEditingController: TextEditingController(), 
             hint: 'Search for a chair',
               )
               
               ],
               ),
             )
             , 
              
                const SizedBox(height: 20,)
              ,
             const Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [  
             
             FilterWidget(
               label: 'Sort',
             ), 
             FilterWidget(
               label: 'Price',
             ), 
             
             FilterWidget(
               label: 'Material',
             ), 
             FilterWidget(
               label: 'Colour',
             ), 
             FilterWidget(
               label: 'Size',
             ), 
             FilterWidget(
               label: 'All filters',
             ), 
             
             
             
               ],
             )         
                  
             
              ],
                       ),
           ),
          
          )
          ),
    

     SliverToBoxAdapter(
    
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 120
        ),
        child: const Column(
          
          
          children: [
        //search container
        
        SearchResultContainer( ),
        
        
        

 RecommendContainer(),


        HomeLink(
          label: 'Back top',
        )
        , 
//recommend
 
        OurSocailMedia()
      
        ,
        //  RecommendContainer(),

        // Spacer() , 
        HomeMenu()
        
        ],),
      ),
    )
  
  ],
)

//  Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                    Column(
//             children: [
//                   const SizedBox(height: 50,) , 
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//             IconButton(onPressed: (){
            
//             }, icon: const ImageIcon(AssetImage(
//               'assets/images/chair_logo.png' ,
              
              
//             ),
//             size: 60,
//               color: Colors.white,))
            
//             ,
            
            
//             IconButton(onPressed: (){
            
//             }, icon: const ImageIcon(AssetImage(
//               'assets/images/menu.png' ,
              
              
//             ),
//             size: 60,
//               color: Colors.white,))
            
//               ],
//             ), ],
//                    )
            
            
//             ,

//  Align(
//   alignment: AlignmentDirectional.centerStart,
//   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  
  
//   children: [
  
//   const Text('Bar stools', style: TextStyle(
//     fontSize: 24 , fontWeight: FontWeight.bold , color: Colors.white
//   ),), 
//   const SizedBox(height: 10,) , 
//   SearchTextField(
//     textEditingController: TextEditingController(), 
// hint: 'Search for a chair',
//   )
  
//   ],
//   ),
// )
// , 

// const SizedBox(height: 20,)
//  ,
// const Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [  

// FilterWidget(
//   label: 'Sort',
// ), 
// FilterWidget(
//   label: 'Price',
// ), 

// FilterWidget(
//   label: 'Material',
// ), 
// FilterWidget(
//   label: 'Colour',
// ), 
// FilterWidget(
//   label: 'Size',
// ), 
// FilterWidget(
//   label: 'All filters',
// ), 



//   ],
// )
// ,
// const SizedBox(height: 20,),
// const Text('10 from 86 items' , style: TextStyle(
//   fontWeight: FontWeight.w300 ,fontSize: 12 ,color: Colors.white
// ),) ,
// const SizedBox(height: 20,),






//               ]
//               ) , 

          

        
        
        
        



            )
        )
      );
        
          
  }


   Widget body(BuildContext context, double offset) {
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      elevation: 4.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: _overlayPosition == OVERLAY_POSITION.BOTTOM
            ? MediaQuery.of(context).size.height -
                _tapDownDetails!.globalPosition.dy -
                20
            : _tapDownDetails!.globalPosition.dy -
                _toolBarHeight! -
                _statusBarHeight! -
                15,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: [
            "First",
            "Second",
            "Third",
            "First",
            "Second",
            "Third",
            "First",
            "Second",
            "Third"
          ]
              .map((String s) => ListTile(
                    subtitle: Text(s),
                  ))
              .toList(growable: false),
        ),
      ),
    );
  }

  Widget nip() {
    return Container(
      height: 25.0,
      width: 25.0,
      // color: Colors.red ,
      margin:  EdgeInsets.only(
        
        left: _tapDownDetails!.globalPosition.dx),
      child: CustomPaint(
        painter: OpenPainter(_overlayPosition!),
      ),
    );
  }
}


class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;
  SliverDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 150;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 150 || oldDelegate.minExtent != 150 || child != oldDelegate.child;
  }
}