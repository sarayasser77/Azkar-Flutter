import 'package:flutter/material.dart';
class Ahadeth extends StatelessWidget {
List Ahadethdetails=[
  'إِذَا مَاتَ الإنْسَانُ انْقَطَعَ عنْه عَمَلُهُ إِلَّا مِن ثَلَاثَةٍ: إِلَّا مِن صَدَقَةٍ جَارِيَةٍ، أَوْ عِلْمٍ يُنْتَفَعُ بِهِ، أَوْ وَلَدٍ صَالِحٍ يَدْعُو له',

  'سلُوا اللهَ علمًا نافعًا، وتَعَوَّذُوا باللهِ منْ علمٍ لا ينفعُ',
  'سيأتيكُم أقوامٌ يطلبونَ العِلمَ، فإذا رأيتُموهم؛ فقولوا لَهُم مَرحبًا مَرحبًا بوصيَّةِ رسولِ اللَّهِ صلَّى اللَّهُ عليهِ وسلَّمَ، واقْنوهُم',
  'مَن جاءَ مَسجِدي هذا لم يَأتِهِ إلَّا لِخيرٍ يتعلَّمُهُ أو يعلِّمُهُ، فَهوَ بمنزلةِ المجاهِدِ في سبيلِ اللَّهِ، ومن جاءَ لغيرِ ذلِكَ فَهوَ بمنزلةِ الرَّجُلِ ينظرُ إلى متاعِ غيرِهِ',
  'نضَّرَ اللَّهُ امرأً سمِعَ منَّا حديثًا فحفِظَهُ حتَّى يبلِّغَهُ غيرَهُ، فرُبَّ حاملِ فقهٍ ليسَ   بفَقيهٍ، ورُبَّ حاملِ   فقهٍ إلى من هوَ أفقَهُ منهُ',

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
      title: Text('احاديث نبويه'),
      ),
      backgroundColor: Colors.white,
body: ListView.builder(itemBuilder: (context,index){
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black)),
    child: Text('${Ahadethdetails[index]}',style: TextStyle(fontSize: 25),),
  );

},
itemCount: Ahadethdetails.length,
),
    );
  }
}
