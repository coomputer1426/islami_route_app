import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(key: _formkey ,child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[TextFormField(validator: (String? value){
        if(value==null || value.isEmpty){
          return "Please Enter some text";
        }return null;},decoration: InputDecoration(hintText: "Enter"), ),
        Padding(padding: EdgeInsets.symmetric(vertical: 16),child:
          ElevatedButton(onPressed: (){if(_formkey.currentState!.validate())
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing Data")),
            );},child: Text("Submit"),),)
      ],
      ));
  }
}
