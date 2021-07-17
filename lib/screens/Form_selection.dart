import 'package:flutter/material.dart';
import 'Default_Form.dart';
import 'Custom_Form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

FirebaseFirestore _firestore=Firestore.instance;

class SelectForm extends StatefulWidget {
  @override
  _SelectFormState createState() => _SelectFormState();
}

class _SelectFormState extends State<SelectForm> {

  @override
  void initState() {
    // TODO: implement initState
    Firebase.initializeApp();
    super.initState();

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Select any One Form'
        ),
      ),
      backgroundColor: Colors.red,
      body: Container(
          child: Row(
            children: <Widget>[
              RaisedButton(
                child: new Text('Submit'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)
                      {
                        return DefaultForm();
                      }));},
              ),
              RaisedButton(
                child: new Text('Submit'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)
                      {
                        return CustomForm();
                      }));},
              ),
              RaisedButton(
                child: new Text('Submit'),
                onPressed: (){
                 null;
                }
              ),

            ],
          )
      ),

    );
  }
}

//
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:checkbox_formfield/checkbox_formfield.dart';
// import 'package:research_final/Others.dart';
//
//
//
// FirebaseFirestore _firestore=Firestore.instance;
//
// class DefaultForm extends StatefulWidget {
//   @override
//   _DefaultFormState createState() => _DefaultFormState();
// }
//
// class _DefaultFormState extends State<DefaultForm> {
//
// //SL.NO
//   String ipnno;
//   String docnno;
//   //SUBSCREEN
//   String bp;
//   bool grpA=false;
//   bool grpB=false;
//   //DEMOGRA
//   String maage;
//   String height;
//   String weight;
//   String bmi;
//   String  occupation;
//   String res;
//   String edulev;
//   String socistat;
//   //obsetric
//   bool hp;
//   String gesage;
//   bool ha;
//   bool htb;
//   bool hpd;
//   bool gravida;
//   //bp
//   String r1;
//   String r2;
//   String r3;
//   //biomaker
//   String uacid;
//   String ldh;
//   String avg;
//   //pes
//   bool bv;
//   bool vm;
//   bool hd;
//   bool ep;
//   //maternal c
//   String checks;
//   //perntial
//   bool aw;
//   int bw;
//   bool iugr;
//   String mode;
//   bool nead;
//   bool neaucad;
//   String perges;
//   bool stillbirth;
// //detaildoctors
//   String name;
//   String des;
//   String dateofcoll;
//   String sign;
//
//
