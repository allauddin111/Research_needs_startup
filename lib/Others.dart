import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class GraphClass extends StatefulWidget {
  @override
  _GraphClassState createState() => _GraphClassState();
}

class _GraphClassState extends State<GraphClass> {
  var data=[1.0,3.2,40.2,5.5,63.5,6.7,.7];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Graph Data')

      ),
          body:  Container(
            child: Column(
              children: [
                Container(
                  color: Colors.black,
        height: 200.0,
        width: 380.0,
        child: new Sparkline(data: data,
    lineColor: Colors.orangeAccent,
    fillColor: Colors.orangeAccent,
    pointsMode: PointsMode.all,
    pointSize: 8.0,),
    ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  color: Colors.black,
                  height: 300.0,
                  width: 380.0,
                  child: new Sparkline(data: data,
                    fillMode: FillMode.below,
                    fillGradient: new LinearGradient(

                        colors: [Colors.pink[2000],Colors.orange[2000]]),
                    ),
                ),]
    ),
    ));}
}
