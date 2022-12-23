import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(color: Color(0xFF9E9E9E),
      child: Form(key: _formkey ,child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 50,width: double.infinity,),
          ContactTextField("Name"),
          SizedBox(height: 20,width: double.infinity,),
          ContactTextField("Phone Number"),
          SizedBox(height: 20,width: double.infinity,),
          Row(mainAxisAlignment: MainAxisAlignment.center ,children: [ContactsButton(_formkey, "Submit"),

            Padding(padding: EdgeInsets.symmetric(vertical: 16),child:
            ElevatedButton(onPressed: (){if(_formkey.currentState!.validate())
              {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing Data")),
              );}},child: Text("Delete"),),)],)

        ],
        )),
    );
  }
}
class ContactTextField extends StatelessWidget {
  // const ContactTextField({Key? key}) : super(key: key);
  String type;
  ContactTextField(this.type);
  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(validator: (String? value){
        if(value==null || value.isEmpty){
          return "Please Enter some text";
        }return null;},
        decoration: InputDecoration(hintText: "Enter Your $type"),
        // initialValue: "Enter Your $type",
      ),
    );
  }
}
class ContactsButton extends StatelessWidget {
  // const ContactsButton({Key? key}) : super(key: key);
  GlobalKey<FormState> key;
  String text;
  ContactsButton(this.key, this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 16),child:
    ElevatedButton(onPressed: (){if(key.currentState!.validate())
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing Data")),
      );},child: Text(text),),);
  }
}
