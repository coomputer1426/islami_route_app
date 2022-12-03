import 'package:flutter/material.dart';
import 'package:islami2/home/sura_details/sura_details.dart';

class SuraNameWidget extends StatelessWidget {
  // const SuraNameWidget({Key? key}) : super(key: key);
  String title;
  int index;
  List<String> surahNozol =[1,2,2,2,2,1,1,2,2,1,
    1,1,2,1,1,1,1,1,1,1,
    1,2,1,2,1,1,1,1,1,1,
    1,1,2,1,1,1,1,1,1,1,
    1,1,1,1,1,1,2,2,2,1,
    1,1,1,1,2,1,2,2,2,2,
    2,2,2,2,2,2,1,1,1,1,
    1,1,1,1,1,2,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,2,2,1,
    1,1,1,1,1,1,1,1,1,2,
    1,1,1,1].map((e) => (e==1)?"مكية": "مدنية").toList();
  List<String> suraAyat=[
    7  ,286,200,176,120,165,206,75 ,129,109,
    123,111, 43, 52, 99,128,111,110, 98,135,
    112, 78,118, 64, 77,227, 93, 88, 69, 60,
    43, 30, 73, 54, 45, 83,182, 88, 75, 85,
    54, 53, 89, 59, 37, 35, 38, 29, 18, 45,
    60, 49, 62, 55, 78, 96, 29, 22, 24, 13,
    14, 11, 11, 18, 12, 12, 30, 52, 52, 44,
    28, 28, 20, 56, 40, 31, 50, 40, 46, 42,
    29, 19, 36, 25, 22, 17, 19, 26, 30, 20,
    15, 21, 11,  8,  8, 19,  5,  8,  8, 11,
    11,  8,  3,  9,  5,  4,  7,  3,  6,  3,
    5, 4,  5,  6].map((e) => e.toString()).toList();
  SuraNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){Navigator.pushNamed(context, SuraDetailsScreen.routeName,
        arguments: SuraDetailsScreenArgs(index: index, name: title));},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, textDirection: TextDirection.rtl,
        // alignment: Alignment.center,
        children: [Text(title, style: TextStyle(fontSize: 28),

        ),
        Text(suraAyat[index],style: TextStyle(fontSize: 28),),
        Text(surahNozol[index],style: TextStyle(fontSize: 28),),
        // textAlign: TextAlign.center,
      ]),
    );
  }
}
