import 'package:flutter/material.dart';
import 'sura_name_widget.dart';

class QuranTab extends StatelessWidget{
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

  List<String> suraNames= ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
      Expanded(flex: 2,child: Image.asset("assets/images/quran_header_image.png", height: 140,)),
      Expanded(flex: 5,child: ListView.separated(itemBuilder:
          (buildContext, index){return SuraNameWidget(suraNames[index], index);},
        separatorBuilder: (_, index){return Container(height: 1,width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 24),
          color: Color(0xFFB7935F),);},
        itemCount: suraNames.length,))
    ],);
  }
}