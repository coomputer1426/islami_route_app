import 'package:flutter/material.dart';
import 'package:islami2/my_theme.dart';

class SuraDetailsScreenTest extends StatelessWidget {
  // const SuraDetailsScreen({Key? key}) : super(key: key);
  static const String routeName="sura-details";

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenTestArgs args = (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenTestArgs;
    return Container(decoration: BoxDecoration(image: DecorationImage(image:
      AssetImage("assets/images/main_background_dark.png"),
      // AssetImage("assets/images/background.png"),
        fit: BoxFit.fill)),
        child: Scaffold(appBar: AppBar(title: Text(args.name),),));
  }
}
class SuraDetailsScreenTestArgs{
  int index;
  String name;
  SuraDetailsScreenTestArgs({required this.index, required this.name});
}
