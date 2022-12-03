import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/home/sura_details/sura_details_args.dart';
import 'package:islami2/home/sura_details/verse_widget.dart';



class SuraDetailsScreen extends StatefulWidget {
  // const SuraDetailsScreen({Key? key}) : super(key: key);

  static const String routeName="sura-details";
  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs args = (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;
    if(verses.isEmpty) readFile(args.index+1);
    return Container(decoration: const BoxDecoration(image: DecorationImage(image:
    AssetImage("assets/images/background.png"), fit: BoxFit.fill)),
        child: Scaffold(appBar: AppBar(title: Text(args.name),),
        body: verses.isEmpty? Center(child: CircularProgressIndicator(),):
        Card(
            // color:Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24), elevation: 12 ,
          child: ListView.separated(itemBuilder: (_, index ){return VerseWidget(verses[index], index+1);},
            itemCount: verses.length, separatorBuilder: (_,__){
            return Container(color: Theme.of(context).primaryColor,height: 1, width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 64),);
            },),
        ),));
  }

  void readFile(int fileIndex) async{
    String fileContent = await rootBundle.loadString("assets/files/$fileIndex.txt");
    List<String> lines = fileContent.trim().split('\n');
    print(fileContent);
    setState(() {
    verses=lines;

    });
  }
}

