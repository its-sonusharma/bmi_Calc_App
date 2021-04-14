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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color:Color(0xFF1F664D),
                borderRadius:BorderRadius.circular(0.0),
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
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(0.0),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                    child: Center(
                      child: Text(feedText,
                        style: labelText,),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius:BorderRadius.circular(100.0),
                ),
                margin: EdgeInsets.all(30.0),
                child: Center(child: Text('Re-Calculate',style: TextStyle(
                  fontSize: 30.0,fontWeight: FontWeight.w900,color: Colors.white,
                ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
