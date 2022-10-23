import 'package:flutter/material.dart';
class Asmaahosna extends StatelessWidget {
List Asmaadetails=[
  'الرحمن','الرحيم','الملك','القدوس','السلام','المؤمن','المهيمن','العزيز','الجبار','المتكبر','الخالق','البارئ','المصور','الغفار','القهار','الوهاب','الرزاق','الفتاح','العليم','القابض','الباسط','الخافض','الرافع','المعز','المذل','السميع','البصير','الحكم','العدل','اللطيف','الخبير','الحليم','العظيم','الغفور','الشكور','العلي','الكبير','الحفيظ','المقيت','الحسيب','الجليل',
'الكريم','الرقيب','المجيب','الواسع','الحكيم','الودود','المجيد','الباعث','الشهيد','الحق','الوكيل','القوي','المتين','الولي','الحميد','المحصي','المبدئ','المعيد','المحيي','المميت','الحي','القيوم','الواجد','الماجد','الواحد','الاحد',
'الصمد','القادر','المقتدر','المقدم','المؤخر','الاول','الاخر','الظاهر','الباطن','الوالي','المتعالي','البر','التواب','المنتقم','العفو','الرؤوف','مالك الملك','ذو الجلال والاكرام','المقسط','الجامع','الغني','المغني',
  'المانع','الضار','النافع','النور','الهادي','البديع','الباقي','الوارث','الرشيد','الصبور',

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Colors.grey.shade700,
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('اسماء الله الحسني',style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
    ),
              itemBuilder: (context,index){
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(MediaQuery.of(context).size.width*.01),
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height*.1,
              width: MediaQuery.of(context).size.width*.2,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
              child: Text('${Asmaadetails[index]}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            );
              },
              itemCount: Asmaadetails.length
            ),
          ),
        ],
      ),

    );
  }

}

