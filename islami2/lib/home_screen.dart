import 'package:flutter/material.dart';
import 'package:islami2/my_theme.dart';

import 'package:islami2/home/hadeth/hadeth_tab.dart';
import 'package:islami2/home/quran/quran_tab.dart';
import 'package:islami2/home/radio/radio_tab.dart';
import 'package:islami2/home/tasbeh/tasbeh_tab.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName="home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectedBottomBarIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(image: DecorationImage(image:
    AssetImage("assets/images/background.png"), fit: BoxFit.fill)),
      child: Scaffold(appBar: AppBar(title: Text("Islami"),),
      body: tabs[selectedBottomBarIndex],
      bottomNavigationBar:
      Theme(data: MyTheme.lightTheme.copyWith(canvasColor: MyTheme.primaryColor), child:
      BottomNavigationBar(items: const [
          BottomNavigationBarItem(backgroundColor: MyTheme.primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_quran.png"), size: 48,),
              label: "Quran"),
          BottomNavigationBarItem(backgroundColor: MyTheme.primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png"), size: 48
          ), label: "Hadeth"),
          BottomNavigationBarItem(backgroundColor: MyTheme.primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_sebha.png"), size: 48),
              label: "Hadeth"),
          BottomNavigationBarItem(backgroundColor: MyTheme.primaryColor ,
              icon: ImageIcon(AssetImage("assets/images/ic_radio.png"), size: 48),
              label: "Hadeth"),
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
    RadioTab()
  ];
}
