import 'dart:ffi';

import 'package:flutter/material.dart';
class Sebha extends StatefulWidget{
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter=0;
 int index=0;
  List buttonname=[
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله',

  ];

  double angle=0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.black,
  centerTitle: true,

  title: Column(
    children: [
      Text('السبحه',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      Image.asset('images/IMG-20220923-WA0005.jpg',width: MediaQuery.of(context).size.height*.3)
    ],
  ),toolbarHeight: MediaQuery.of(context).size.height*0.3,
),
     body:
     SingleChildScrollView(
       child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height*.1,
                width: MediaQuery.of(context).size.width*0.3,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20),),
                child: Text('$counter/33',style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.bold ),),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  counter++;

                  if(counter%33==0 || index==3){
                    index++;
                    counter=0;
                  }
                  if(index>3){
                    index=0;

                  }
                  setState(() {

                  });
                },
                child: Transform.rotate
                  (
                  angle: angle=angle+20,
                    child: Image.asset('images/sebha.jpg',width: MediaQuery.of(context).size.height*.2,)

                ),
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.3,vertical: MediaQuery.of(context).size.height*.1 ),
                width:double.infinity,
                height: MediaQuery.of(context).size.height*.1,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),border:Border.all(color: Colors.white10)),
                child: Text('${buttonname[index]}',style: TextStyle(color: Colors.white,fontSize: 25),),
              ),
            ],
         ),
     ),
     );

  }
}