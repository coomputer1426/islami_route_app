import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  // const SuraDetailsScreen({Key? key}) : super(key: key);
  static const String routeName="sura-details";

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs args = (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;
    return Container(decoration: const BoxDecoration(image: DecorationImage(image:
    AssetImage("assets/images/background.png"), fit: BoxFit.fill)),
        child: Scaffold(appBar: AppBar(title: Text(args.name),),));
  }
}
class SuraDetailsScreenArgs{
  int index;
  String name;
  SuraDetailsScreenArgs({required this.index, required this.name});
}
