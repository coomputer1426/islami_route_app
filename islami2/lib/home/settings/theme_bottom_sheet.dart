

import 'package:flutter/material.dart';
import 'package:islami2/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:islami2/main.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class ThemeButtomSheet extends StatefulWidget {
  const ThemeButtomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeButtomSheet> createState() => _ThemeButtomSheetState();
}

class _ThemeButtomSheetState extends State<ThemeButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(padding: EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      InkWell(onTap: (){settingsProvider.changeTheme(ThemeMode.light);} ,
          child: settingsProvider.isDarkMode()?getUnselectedItem(AppLocalizations.of(context)!.light): getSelectedItem(AppLocalizations.of(context)!.light)),
      SizedBox(height: 8,),
      InkWell(onTap: ()=>settingsProvider.changeTheme(ThemeMode.dark) ,
          child: settingsProvider.isDarkMode()?getSelectedItem(AppLocalizations.of(context)!.dark): getUnselectedItem(AppLocalizations.of(context)!.dark)),
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
