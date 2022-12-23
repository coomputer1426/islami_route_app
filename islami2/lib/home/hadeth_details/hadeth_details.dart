import 'package:flutter/material.dart';
import 'package:islami2/home/hadeth/hadeth.dart';
import 'package:islami2/provider/settings_provider.dart';
import 'package:provider/provider.dart';


class HadethDetailsScreen extends StatelessWidget {
  // const HadethDetailsScreen({Key? key}) : super(key: key);
  static const String routeName = "hadeth-details";

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(decoration: BoxDecoration(image: DecorationImage(image:
    // AssetImage("assets/images/background.png"),
    AssetImage(settingsProvider.getMainBackgroundImage()),
        fit: BoxFit.fill)),
        child: Scaffold(appBar: AppBar(title: Text(args.title),),
          body:
          Container(width: double.infinity, height: double.infinity,
            child: Card(
              // color:Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24), elevation: 12 ,
              child: SingleChildScrollView(child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(args.contnet, style: Theme.of(context).textTheme.headline6,textDirection: TextDirection.rtl,),
              )),),
          )),

                  // margin: EdgeInsets.symmetric(horizontal: 64),
    );



  }
}
