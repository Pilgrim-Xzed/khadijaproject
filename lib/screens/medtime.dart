import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class medtime extends StatefulWidget{
  MedTimeState createState() => MedTimeState();
}

enum actions{SKIP, TAKE}
class MedTimeState extends State<medtime>{

  String _answer = '';
  void SetAction(String value){
    setState((){
      _answer = value;
    });
  }

  Future <Null> _userans() async {
    switch (
      await showDialog<actions>(
        context: context,
         child: SimpleDialog(
           title: const Text(''),
           children: <Widget>[
             Container(
               width:2000.0,
               decoration: BoxDecoration(
               color: Color(0xff56c8d8),),//56c8d8),
               child: Center(
                 child: Text("Have you taken your meds"),)
             ),
             Row(
               children: <Widget>[
                 RaisedButton.icon(
                  icon: Icon(Icons.close),
                  label: Text('Skip'),
                  onPressed: (){Navigator.pop(context, actions.SKIP);},
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.check),
                  label: Text('Take'),
                  color: Color(0xffba6b6c),
                  onPressed: (){Navigator.pop(context, actions.TAKE);},
               )
               ],
             ),
             
           ],
           ),
         )
    ){
      case actions.SKIP:
      break;
      case actions.TAKE:
      break;
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Text(''),
      ),
    );
  }
  }