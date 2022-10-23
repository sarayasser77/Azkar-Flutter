import 'package:flutter/material.dart';
class doaa extends StatefulWidget {
  @override
  State<doaa> createState() => _doaaState();
}

class _doaaState extends State<doaa> {
  int index=0;

List doaadetails=[
  'اللهم يا مقلب القلوب ثبت قلوبناعلي دينك',
  'اللهم اجعلني خيرا مما يظنون ولا تؤاخذني بما يقولون واغفر لي ما لا يعلمون',
  'اللهم سخر لنا من الاقدار اجملها ومن السعاده اكملها ومن الامور ايسرها',
  'اللهم اني اعوذ بك من زوال نعمتك وتحول عافيتك وفجاءه نقمتك وجميع سخطك',
  'اللهم اكفني بحلالك عن حرامك واغنني بفضلك عمن سواك',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
      title: Text('الادعيه'),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.2),
        alignment: Alignment.center,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.25),
        height: MediaQuery.of(context).size.height*.25,
        decoration: BoxDecoration(color: Colors.black,border: Border.all(color: Colors.white,),borderRadius: BorderRadius.circular(20)),
        child: Text(' ${doaadetails[index]},',style: TextStyle(color: Colors.white,fontSize: 20),),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: (){
          if(index<4){
          index++;
          setState(() {

          });
          }else {
            index = 0 ;
            setState(() {

            });
           }

        },
      ),
    );
  }
}
