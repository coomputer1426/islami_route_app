
import 'package:islami2/home/sura_details/sura_details.dart';
import 'package:islami2/statefulwidgcontactsassign2p1/contactscreen.dart';
import 'package:islami2/statefulwidgcontactsassign2p1/mycustomform.dart';
import 'my_theme.dart';
import 'package:flutter/material.dart';
import 'package:islami2/home_screen.dart';

void main(){
  runApp(MyApplication());

}

class MyApplication extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        SuraDetailsScreen.routeName: (_)=>SuraDetailsScreen(),
        ContactsScreen.routeName: (_)=>ContactsScreen(),
      },
      // initialRoute: ContactsScreen.routeName,
      theme: MyTheme.lightTheme,
    home: StatefulWidgetPart()
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
