import 'package:flutter/material.dart';
import 'package:islami2/home/hadeth/hadeth.dart';
import 'package:islami2/home/sura_details/sura_details_screen.dart';
import 'package:islami2/home/hadeth_details/hadeth_details.dart';
import 'package:islami2/home/sura_details/sura_details_args.dart';


class HadethTitleWidget extends StatelessWidget {
  // const SuraNameWidget({Key? key}) : super(key: key);
  Hadeth hadeth;
  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.pushNamed(context, HadethDetailsScreen.routeName, arguments: hadeth);
      // Navigator.pushNamed(context, SuraDetailsScreen.routeName, arguments: SuraDetailsScreenArgs(index: index, name: title));
      },
      child: Container(padding: EdgeInsets.all(4), alignment: Alignment.center,
      child: Text(hadeth.title, style: Theme.of(context).textTheme.headline4,),)

      // Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween, textDirection: TextDirection.rtl,
        // alignment: Alignment.center,
        // children: [
        //   Text(title, style: TextStyle(fontSize: 28),

        ,

        // textAlign: TextAlign.center,
      // ]      ),
    );
  }
}
