

import 'package:flutter/material.dart';
import 'package:islami2/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:islami2/main.dart';
class LanguageButtomSheet extends StatefulWidget {
  const LanguageButtomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(padding: EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        InkWell(onTap: (){settingsProvider.changeLocale("en");} ,
            child: (settingsProvider.currentLang=="en")?getSelectedItem("English"):getUnselectedItem("English")),
        SizedBox(height: 8,),
        InkWell(onTap: (){settingsProvider.changeLocale("ar");},
            child: (settingsProvider.currentLang=="en")?getUnselectedItem("العربية"):getSelectedItem("العربية")),
      ],),);
  }

  Widget getSelectedItem(String title){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline4?.copyWith(color: Theme.of(context).accentColor),),
        Icon(Icons.check, color: Theme.of(context).accentColor,)
      ],
    );
  }

  Widget getUnselectedItem(String title){
    return Text(title, style: Theme.of(context).textTheme.headline4,);
  }
}
