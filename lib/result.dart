import 'package:calculate_bmi/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BResult extends StatelessWidget {

  BResult({@required this.bmiResult,this.feedText,this.resultText});
  final String bmiResult;
  final String resultText;
  final String feedText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius:BorderRadius.circular(20.5),
              ),
              margin: EdgeInsets.all(30.0),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0,),
                  Center(child: Text('Your Result',style: TextStyle(
                    fontSize: 40.0,fontWeight: FontWeight.w900,
                  ),)),
                  SizedBox(height: 20.0),
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text(resultText.toUpperCase(),style:labelText)),
                        SizedBox(height: 20.0,),
                        Center(child: Text(bmiResult,style:TextStyle(
                          fontSize: 80.0,fontWeight: FontWeight.w900,
                        ),)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Center(
                    child: Text(feedText,
                      style: labelText,),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius:BorderRadius.circular(50.5),
                ),
                margin: EdgeInsets.all(30.0),
                child: Center(child: Text('Re-Calculate',style: TextStyle(
                  fontSize: 30.0,fontWeight: FontWeight.w900,
                ),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
