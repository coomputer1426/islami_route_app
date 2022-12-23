
import 'package:islami2/home/sura_details/sura_details_screen.dart';
import 'package:islami2/provider/settings_provider.dart';
import 'package:islami2/statefulwidgcontactsassign2p1/contactscreen.dart';
import 'package:islami2/statefulwidgcontactsassign2p1/mycustomform.dart';
import 'my_theme.dart';
import 'package:flutter/material.dart';
import 'package:islami2/home_screen.dart';
import 'package:islami2/home/hadeth_details/hadeth_details.dart';
import 'package:provider/provider.dart';
import 'package:islami2/provider/settings_provider.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

void main(){
  runApp(ChangeNotifierProvider(create: (buildContext)=>SettingsProvider() ,child: MyApplication()));

}

class MyApplication extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      themeMode: settingsProvider.currentTheme,
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        SuraDetailsScreen.routeName: (_)=>SuraDetailsScreen(),
        ContactsScreen.routeName: (_)=>ContactsScreen(),
        HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen(),
      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.currentLang),
      // suppor
      // initialRoute: ContactsScreen.routeName,
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    // home: StatefulWidgetPart()
    );

  }

}
class StatefulWidgetPart extends StatelessWidget {
  const StatefulWidgetPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Stateful Widget Apps"),),
    body: Column(children: [
      ElevatedButton(onPressed: (){Navigator.pushNamed(context, HomeScreen.routeName);},
          child: Text("Islami App")),
      ElevatedButton(onPressed: (){Navigator.pushNamed(context, ContactsScreen.routeName);},
          child: Text("Contacts Screen Assignment"))
    ],),);
  }
}
