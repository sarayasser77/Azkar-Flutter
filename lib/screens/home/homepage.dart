
import 'package:flutter/material.dart';

import '../../Ahadeth/Ahadeth.dart';
import '../../Asmaahosna/Asmaahosna.dart';
import '../../doaa/doaa.dart';
import '../Azkar/AzkarScreen.dart';
import '../sebha/sebhascreen.dart';
class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
int currentindex=0;
  List Screens=[Azkarscreen(),Sebha()];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.black,
       ),
       drawer: Drawer(
         backgroundColor: Colors.grey.shade300,
         width: 270,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
decoration: BoxDecoration(
  color: Colors.black,
  gradient: LinearGradient(colors: [
   Colors.black,
    Colors.grey.shade700
  ])
),

               alignment: Alignment.center,
               width: double.infinity,
               height: 200,

               child: Text('اذكاري', style: TextStyle(
                 color: Colors.white,
                 fontSize: 30,
                 fontStyle: FontStyle.italic,
                 fontWeight: FontWeight.bold,),),
             ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.green.shade900,border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx){return Ahadeth();}));
                      }, icon: Icon(Icons.menu_book_rounded,size: 30,color: Colors.white,)),
                      Text('احاديث',style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.green.shade900,border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return doaa();
                        }));
                      }, icon: Icon(Icons.handshake_outlined,size: 30,color: Colors.white,)),
                      Text('دعاء',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ],
            ),
             Container(
                 margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.15),
                 padding: EdgeInsets.all(20),
                 decoration: BoxDecoration(color: Colors.green.shade900,border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(20)),
                 child: Column(
                   //
                   children: [
                     IconButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (ctx){return Asmaahosna();}));
                     }, icon: Icon(Icons.border_color_outlined,size: 30,color: Colors.white,)),
                     Text('اسماء الله الحسني',style: TextStyle(color: Colors.white),)
                   ],
                 ),
               ),

           ],
         ),
       ),
     body: Screens[currentindex],
     bottomNavigationBar:BottomNavigationBar(
       backgroundColor: Colors.black,
       currentIndex:currentindex,
       onTap: (int index){
         currentindex=index;
         setState(() {
         }
         );
       },
       unselectedItemColor: Colors.grey,
       selectedItemColor: Colors.white,
       items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Azkar'),
   BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Sebha'),
       ],
     )
   );
  }
}