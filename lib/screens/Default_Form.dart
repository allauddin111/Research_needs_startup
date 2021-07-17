import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';
import 'package:research_final/Others.dart';
import 'package:research_final/displaypage.dart';




FirebaseFirestore _firestore=Firestore.instance;

class DefaultForm extends StatefulWidget {
  @override
  _DefaultFormState createState() => _DefaultFormState();
}

class _DefaultFormState extends State<DefaultForm> {

//SL.NO
  String ipnno;
  String docnno;
  //SUBSCREEN
  String bp;
  bool grpA=true;
  bool grpB=true;
  //DEMOGRA
  String maage;
  String height;
  String weight;
  String bmi;
int  occupation;
bool occstate=true;
  String res;
  String edulev;
  String socistat;
  //obsetric
 bool hp=true;
  String gesage;
bool ha=true;
bool htb=true;
bool hpd=true;
  bool gravida=true;
  //bp
  String r1;
  String r2;
  String r3;
  //biomaker
  String uacid;
  String ldh;
  String avg;
  //pes
  bool bv=true;
  bool vm=true;
  bool hd=true;
  bool ep=true;
  //maternal c
  bool checks;
  //perntial
bool aw=true;
String bw;
bool iugr=true;
String mode;
bool nead=true;
bool neaucad=true;
String perges;
bool stillbirth=true;
//detaildoctors
  String name;
  String des;
  String dateofcoll;
  String sign;





  @override
  void initState() {
    // TODO: implement initState
    Firebase.initializeApp();
    super.initState();
  }

  void inputdata(){

    _firestore.collection('SL.no').document().setData({"docno":docnno,"ipno":ipnno});
    _firestore.collection('SL.no').document().setData({"docno":docnno,"ipno":ipnno});
    _firestore.collection('subscreening').document().setData({"bp":bp,"grpA":grpA,"grpB":grpB});
    _firestore.collection('MateranalComps').document().setData({"checks":checks});
    _firestore.collection('bpcheck').document().setData({"rd1":r1,"rd2":r2,"rd3":r3});
    _firestore.collection('demographdetails').document().setData({"bmi":bp,"edulev":edulev,"hie":height,"'wei":weight,"materage" :maage,"occ" : occupation,"res": res,"socioeco": socistat});
    _firestore.collection('preeclampsia').document().setData({"blurvision":bv,"epipain":ep,"headache":hd,"vomiting": vm});
    _firestore.collection('perinatalout').document().setData({"alivewell":aw,"babywei":bw,"iugr":iugr,"modedel":mode,"neodeat":nead,"nicuadd":neaucad,"perges":perges,"stillbirths":stillbirth});
    _firestore.collection('obshistory').document().setData({"gestationalage":gesage,"gravidity":gravida,"hypinprevpreg":hp,"prevhisofabor":hd,"prevhisofprtermdel":hpd,"prevhisofstbirth":htb});
    _firestore.collection('biomakers').document().setData({"avg":avg,"ldh":ldh,"uricacis":uacid});
    _firestore.collection('deta').document().setData({"name":name,"desig":des,"date":dateofcoll,"sign":sign});

    print(docnno);
    print(ipnno);
    print(bp);
    print(grpA);
    print(grpB);
    print(occupation);}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Default Form'
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children:[ Column(
              children: [

                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 70.0,
                  child: Text('Serum Uric Acid and Serum Lactate Dehydrogenase: A prognostic marker for maternal and perinatal outcome in Preeclampsia and Eclampsia',
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText:'IP NO',

                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    ipnno=newText;
                  },
                ),
                TextFormField(


                  decoration: InputDecoration(
                    labelText: 'DOCUMENT NO',
                    fillColor:Colors.white10,
                  ),
                   onChanged: (newText){
                      docnno=newText;
                      },
                ),

                Container(

                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Subject Screening',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'BLOOD PRESSURE',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    bp=newText;
                  },
                ),
                Column(

                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('GROUP A'),
                        Radio(value: grpA, groupValue: false, onChanged: (bool value){setState(() {
                          grpA=value;
                        });})

                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('GROUP B'),
                        Radio(value: grpB, groupValue: false, onChanged: (bool value){setState(() {
                          grpB=value;
                        });})


                      ],),
                  ],
                ),


                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Demographic Details',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,

                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'MATERNAL AGE',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    maage=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'HEIGHT',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    height=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'WEIGHT',
                    fillColor:Colors.white10,
                  ),
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'BMI',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    weight=newText;
                  },
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('OCCUPATION'),
                        Text('Housewife'),

                        Radio(value: 1, groupValue: 0,activeColor: Colors.green, onChanged: (value){setState(() {
                          occupation=1;
                          
                        });}),
                        Text('Labourer'),

                        Radio(value: 2, groupValue: 0, onChanged: (value){setState(() {
                          occupation=value;

                        });}),
                        Text('  Agriculture'),
                        Radio(value: 3, groupValue: 0, onChanged: ( value){setState(() {
                          occupation=value;

                        });}),
                        Text('Business'),

                        Radio(value: 4, groupValue: 0, onChanged: (value){setState(() {
                          occupation=value;
                        });}),
                        Text(' Others'),

                        Radio(value: 5, groupValue: 0, onChanged: (value){setState(() {
                          occupation=value;
                        });}),

                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('RESIDENSE'),
                        Text(' Urban'),
    Radio(value: 1, groupValue: 0, onChanged: ( value){setState(() {


                          res=value;
                        });}),
                        Text('Slum'),

                        Radio(value: 2, groupValue: 0, onChanged: ( value){setState(() {
                          res=value;
                        });}),
                        Text('Rural'),

                        Radio(value: 3, groupValue: 0, onChanged: ( value){setState(() {
                          res=value;
                        });}),

                      ],
                    )
                  ],
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('EDUCATION LEVEL'),
                        Text(' Illiterate'),

                        Radio(value: 1, groupValue: 0, onChanged: ( value){setState(() {
                          edulev=value;
                        });}),

                        Text(' Primary'),

                        Radio(value: 2, groupValue: 0, onChanged: ( value){setState(() {
                          edulev=value;
                        });}),

                        Text(' Secondary'),

                        Radio(value: 3, groupValue: 0, onChanged: ( value){setState(() {
                          edulev=value;
                        });}),

                        Text('Graduate'),

                        Radio(value: 4, groupValue: 0, onChanged: ( value){setState(() {
                          edulev=value;
                        });}),

                        Text('Post Graduate'),

                        Radio(value: 5, groupValue: 0, onChanged: ( value){setState(() {
                          edulev=value;
                        });}),

                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Column(
                      children: [
                        Text('SOCIO STATUS'),
                        Text('Upper'),
                        Radio(value: 1, groupValue: 0, onChanged: ( value){setState(() {
                          socistat=value;
                        });}),

                        Text('Upper middle'),
                        Radio(value: 2, groupValue: 0, onChanged: ( value){setState(() {
                          socistat=value;
                        });}),

                        Text('MiddleOCCUPATION'),

                        Radio(value: 3, groupValue: 0, onChanged: ( value){setState(() {
                          socistat=value;
                        });}),

                        Text('  Middle'),

                        Radio(value: 4, groupValue: 0, onChanged: ( value){setState(() {
                          socistat=value;
                        });}),

                        Text('Lower middle'),

                        Radio(value: 5, groupValue: 0, onChanged: ( value){setState(() {
                          socistat=value;
                        });}),

                      ],
                    )
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Obstetrics History',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          // Column(children: [
                            Text('HYPERTENSION IN PREGNANCY'),

                                Radio(value: 1, groupValue: 0, onChanged: ( value){setState(() {
                                  hp=value;
                                });}),

                              // ],),





                          // Text('Acute Respiratory Syndrome'),
                          // new Checkbox(value: grpc,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          //   grpc=value;
                          // });}),
                          //

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Previous history of abortions'),
                          // Text('Acute Respiratory Syndrome'),
                          Radio(value: 2, groupValue: 0, onChanged: ( value){setState(() {
                            ha=value;
                          });}),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Previous history of till birth'),
                          // Text('Acute Respiratory Syndrome'),
                          Radio(value: 3, groupValue: 0, onChanged: ( value){setState(() {
                            htb=value;
                          });}),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Last history of preterm delivery'),
                          Radio(value: 4, groupValue: 0, onChanged: ( value){setState(() {
                            hpd=value;
                          });}),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child:
                            Text(
                                'GRAVIDITY'
                            ),


                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Primigravida'),
                              Radio(value: 1, groupValue: 0, onChanged: ( value){setState(() {
                                perges=value;
                              });}),

                            ],
                          ),

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Multigravida'),
                          Radio(value: grpA, groupValue: false, onChanged: (bool value){setState(() {
                            grpA=value;
                          });}),



                        ],
                      ),

                    ] ),


                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'GESTATIONAL AGE',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    gesage=newText;
                  },
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Blood Pressure (mm/Hg)',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'READING 1',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    r1=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'READING 2',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    r2=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'READING 3',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    r3=newText;
                  },
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text(' Biomarkers',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'URIC ACID(mg/dL)',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    uacid=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'LDH(IU/I)',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    ldh=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'AVERAGE',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    avg=newText;
                  },
                ),
                SizedBox(height: 50.0,),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Preeclampsia/Eclampsia Symptoms',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Epigastric Pain'),
                        new Checkbox(value: grpA,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('BLURRED VISION'),
                        new Checkbox(value: grpA,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('VOMITTING'),
                        new Checkbox(value: grpA,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('HEADACHE'),
                        new Checkbox(value: grpA,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),

                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Maternal Complications',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),

                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Isolated Thrombocytopenia'),
    new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
      checks=value;

    });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Convulsion'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;

                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Pulmonary edema'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;

                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Jaundice'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;

                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('HELLP Syndrome'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;

                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Placental Abruption'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;

                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Renal Failure'),
                        new Checkbox(value: true ,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;

                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('DiseminatedvascularCoagulation'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;

                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Cardiorespiratory arrest'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Postpartum Hemorrhage'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Antepartum Hemorrhage'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Acute Respiratory Syndrome'),
                        new Checkbox(value: true,activeColor:Colors.green,onChanged: ( value){setState(() {
                          checks=value;
                        });}),
                      ],
                    ),


                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),

                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Perinatal Outcome',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('PERIOD OF GESTATION'),
                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('PRETERM'),
                Radio(value: 1, groupValue: 0, onChanged: ( value){setState(() {
                gravida=value;
                });}),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('TERM'),
                        Radio(value: 2, groupValue: 0, onChanged: ( value){setState(() {
                          gravida=value;
                        });}),
                      ],
                    ),

                    TextFormField(

                      decoration: InputDecoration(
                        labelText: 'BABY WEIGHT',
                        fillColor:Colors.white10,
                      ),
                        onChanged: (value){
                        bw=value;
                        },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Column(
                      children: [
                        Text('MODE OF DELIVERY'),
                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('NORMAL VAGINAL DELIVERY'),
                        Radio(value: grpA, groupValue: false, onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('CAESEREAN SECTION'),
                        Radio(value: grpA, groupValue: false, onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('NEONATAL DEATH'),
                        new Checkbox(value: nead,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          nead=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('STILL BIRTHS'),
                        new Checkbox(value: grpA,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('IUGR'),
                        new Checkbox(value: grpA,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('NICU ADMISSION'),
                        new Checkbox(value: grpA,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          grpA=value;
                        });}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('ALIVE AND WELL'),
                        new Checkbox(value: aw,activeColor:Colors.green,onChanged: (bool value){setState(() {
                          aw=value;
                        });}),
                      ],
                    ),




                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 40.0,
                  child: Center(
                    child: Text('Details of Data Colecting Personnal',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'NAME',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    name=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'DESIGNATION',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    des=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'DATE OF DATA COLLECTION',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    dateofcoll=newText;
                  },
                ),
                TextFormField(

                  decoration: InputDecoration(
                    labelText: 'SIGN',
                    fillColor:Colors.white10,
                  ),
                  onChanged: (newText){
                    sign=newText;
                  },
                ),

                SizedBox(
                  height: 50.0,
                ),
                RawMaterialButton(
                  child: Text(
                    'Save Data',
                  ),

                  fillColor: Colors.green,
                  onPressed: (){
                    setState(() {
                      inputdata();
                    });
                  },

                ),
                RawMaterialButton(
                  child: Text(
                    'Retrieve Tabular Form data',
                  ),

                  fillColor: Colors.green,
                  onPressed: (){
                    setState(() {
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return display();
                      }));
                    });

                  },

                ),
                RawMaterialButton(
                  child: Text(
                    'Retrieve Graphical data',
                  ),

                  fillColor: Colors.green,
                  onPressed: (){
                    setState(() {
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return GraphClass();
                      }));
                    });

                  },

                )
              ]
          ),
          ],));
  }
}


class display extends StatefulWidget {
  @override
  _displayState createState() => _displayState();
}

class _displayState extends State<display> {

  void getData() async{
   final messages=await _firestore.collection('SL.no').getDocuments();
   for(var message in messages.documents){
     print(message.data);
   }
  }

  void datastream()async{
    await for(var snapshot in _firestore.collection('SL.no').snapshots()){
      for(var message in snapshot.documents){
        print(message.data);
      }
    }
  }
void binarydatareader()async{

}
  @override
  void initState() {
    getData();// TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Tabular Display Page'
        ),

      ),
      body:  ListView(
    children: [
      Text('Table Structure'),
      Text('Name ---->  aaj'),
      Text('Gender---> 1'),
      Text('Ip No ---->  125'),
      Text('Doc No ----> 548'),
      Text('Blood Pressure ----> 54.8'),
      Text('Name of data collector ----> sample'),
      Text('Designation ----> Doctor'),
      Text('Date ----> 5-4-20'),
      Container(
        child: RaisedButton(child:Text(
          'Generate Binary format data'
        ),
            color:Colors.red,onPressed: binarydatareader)
      )

  ],

    ));
  }
}