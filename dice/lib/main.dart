import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body:DicePage() ,
      ),
    )

  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnum = 1;
  int rightnum = 1;
  void randomnum (){
    setState(() {
      leftnum=Random().nextInt(6)+1;
      rightnum=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            dicecont(leftnum, randomnum),
            dicecont(rightnum, randomnum),

          ],
        ),
      ),
    );
  }
}

 dicecont (int num,Function action){
   return Expanded(
     child: FlatButton(
         onPressed: action,
         child: Image.asset('images/dice${num}.png')
     ),
   );
}

