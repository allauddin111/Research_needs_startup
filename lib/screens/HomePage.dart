import 'package:flutter/material.dart';
import 'package:research_final/screens/Default_Form.dart';
import 'package:research_final/screens/Form_selection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final formKey=new GlobalKey<FormState>();

String Email;
String Password;

void validateandSave(){
  final form =formKey.currentState;
  if (form.validate()){
    print('Formisvahvs $Password  $Email' );
  }
  else{
    print('snddbd $Email' );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'LoginPage'
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
                decoration: new InputDecoration(labelText: 'Email'),
                validator: (value)=>value.isEmpty? 'Email cant be empty':null,
                onSaved: (value)=> Email=value
            ),
            TextFormField(
                decoration: new InputDecoration(labelText: 'Password'),
                validator: (value)=>value.isEmpty? 'Password cant be empty':null,
                onSaved: (value)=> Password=value
            ),
            RaisedButton(
              child: new Text('Submit'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)
                {
                  return DefaultForm();
                }));},
            ),

          ],
        ),
      ),
    );
  }
}
