import 'package:flutter/material.dart';
import 'package:islami2/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:islami2/home/hadeth/hadeth_tab.dart';
import 'package:islami2/home/quran/quran_tab.dart';
import 'package:islami2/home/radio/radio_tab.dart';
import 'package:islami2/home/tasbeh/tasbeh_tab.dart';
import 'package:islami2/home/settings/settings_tab.dart';
import 'package:islami2/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:islami2/provider/settings_provider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName="home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectedBottomBarIndex=0;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(decoration: BoxDecoration(image: DecorationImage(image:
    AssetImage(settingsProvider.getMainBackgroundImage()), fit: BoxFit.fill)),
      child: Scaffold(appBar: AppBar(title:
      // const Text("Islami"),),
      Text(AppLocalizations.of(context)!.app_title),),
      body: tabs[selectedBottomBarIndex],
      bottomNavigationBar:
      Theme(data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor), child:
      BottomNavigationBar(items: [
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_quran.png"), size: 48,),
              // label: "Quran"),
              label: AppLocalizations.of(context)!.quran),
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png"), size: 48
          // ), label: "Hadeth"),
          ), label: AppLocalizations.of(context)!.hadeth),
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_sebha.png"), size: 48),
              // label: "Tasbeh"),
              label: AppLocalizations.of(context)!.mention),
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_radio.png"), size: 48),
              // label: "Radio"),
              label: AppLocalizations.of(context)!.radio),
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor ,
              icon: const Icon(Icons.settings, size: 48),
              label: "Setting"),
        ],currentIndex: selectedBottomBarIndex,onTap: (index){print(index);setState(() {
          selectedBottomBarIndex=index;
        });},),
      ),
      ),
    );
  }
  List<Widget> tabs =[
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];
}
