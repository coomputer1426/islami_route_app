
import 'package:islami2/home/hadeth/hadeth_title_widget.dart';
import 'package:islami2/home/hadeth/hadeth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HadethTab extends StatefulWidget{
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList =[];

  @override
  Widget build(BuildContext context) {
    if(allHadethList.isEmpty)loadHadethFile();
    return Container(
      // color: Colors.blueAccent,
    child: Column(children: [Image.asset("assets/images/hadeth_header_image.png"),
      Expanded(child: ListView.separated(itemBuilder: (buildContext, index){
          return HadethTitleWidget(allHadethList[index]);},
        separatorBuilder: (_, index){return Container(height: 1,width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 24),
          color: Theme.of(context).accentColor,);},
        itemCount: allHadethList.length,),
    )],),);
  }

void loadHadethFile()async{
    List<Hadeth> hadethList =[];
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allhadethContent = content.trim().split("#");
    for(int i=0; i<allhadethContent.length; i++){

      // print(allhadethContent[i].trim());
      String singleHadeth = allhadethContent[i].trim();
      if(singleHadeth.trim()=="")break;
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0,indexOfFirstLine);
      String content =singleHadeth.substring(indexOfFirstLine+1);
      Hadeth h=Hadeth(title, content);
      // print("${h.title}\n${h.contnet}");
      hadethList.add(h);
    }allHadethList =hadethList;
    setState(() {
    });
}
}
