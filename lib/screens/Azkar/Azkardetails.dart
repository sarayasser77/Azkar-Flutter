
import 'package:flutter/material.dart';
class AzkarDetails extends StatefulWidget{
  AzkarDetails({required this.AzkarText,required this.Azkarcounter});
 List<String> AzkarText;
 List<int> Azkarcounter;

  @override
  State<AzkarDetails> createState() => _AzkarDetailsState();
}

class _AzkarDetailsState extends State<AzkarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Text('${widget.AzkarText[index]}'),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    if(widget.Azkarcounter[index]>0){
                      widget.Azkarcounter[index]--;
                    }

                    setState(() {
                    });
                  },
                  child: Container(

                    alignment: Alignment.center,
                    width: 120,
                     height: 50,
decoration: BoxDecoration(border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(10),color: widget.Azkarcounter[index]==0?Colors.green:Colors.black,),
                    child: Text('${widget.Azkarcounter[index]}',style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(height: 20,)
              ],
            );
          },
          itemCount: widget.AzkarText.length,
          )
    );
  }
}