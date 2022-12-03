
import 'mycustomform.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  // const ContactsScreen({Key? key}) : super(key: key);
  static const String routeName="Contacts_Form";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts Screen"),),
      body: MyCustomForm(),


    );
  }
}
