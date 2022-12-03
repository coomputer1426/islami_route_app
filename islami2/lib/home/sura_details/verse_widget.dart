import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  // const VerseWidget({Key? key}) : super(key: key);
  String content;
  int index;
  VerseWidget(this.content, this.index);
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(vertical: 8),
      child: Text("$content [$index]",textDirection: TextDirection.rtl,textAlign: TextAlign.center ,style: TextStyle(fontSize: 18),),);
  }
}
