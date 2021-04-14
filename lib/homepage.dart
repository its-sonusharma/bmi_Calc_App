import 'package:calculate_bmi/finding_bmi.dart';
import 'package:calculate_bmi/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koukicons/businessman.dart';
import 'package:koukicons/businesswoman.dart';
import 'reusable_card.dart';
import 'constants.dart';


enum Gender{
  male,female,
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Gender selectedGender ;
  int height = 180;
  int weight = 50;
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate BMI'),
        centerTitle: true,
      ),
      body:Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender=Gender.male;
                    });
                  },
                  cardChild: KoukiconsBusinessman(height: 40,width: 40,),
                  rang:selectedGender == Gender.male ? inactiveCardColor : activeCardColor,
                ),
                ReusableCard(
                  onPress:(){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: KoukiconsBusinesswoman(height: 40,width: 40,),
                  rang: selectedGender == Gender.female ? inactiveCardColor:activeCardColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableCard(rang: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight",style: labelText,),
                      Text(weight.toString(),style: numberText,),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RIconButton(icon: FontAwesomeIcons.minus,
                          onPush: (){
                            setState(() {
                              weight = weight-1;
                            });
                          },),
                          SizedBox(width: 10.0,),
                          RIconButton(icon: FontAwesomeIcons.plus,
                          onPush: (){
                            setState(() {
                              weight = weight+1;
                            });
                          },),
                       ]
                      ),
                    ],
                  ),
                ),
                ReusableCard(
                  rang: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age",style: labelText,),
                      Text(age.toString(),style: numberText,),
                      SizedBox(height: 10.0),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RIconButton(icon: FontAwesomeIcons.minus,
                                onPush:(){
                                  setState(() {
                                    age = age-1;
                                  });
                                }
                            ),
                            SizedBox(width: 10.0,),
                            RIconButton(icon: FontAwesomeIcons.plus,
                              onPush: (){
                                setState(() {
                                  age = age+1;
                                });
                              },),
                          ]
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: activeCardColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    ),
                  ),
                  height: midContainerHeight , width:midContainerWidth ,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("HEIGHT",style: labelText,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(),style: numberText),
                          Text("cm",style:labelText),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 250.0,
                        activeColor: Colors.amber,
                        inactiveColor: Color(0xFF052249),
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ],
                  ) ,
                ),
              ],
            ),
            SizedBox(height: 15.0),
            GestureDetector(
              onTap: (){
                CalculateBMI bmiclc  = CalculateBMI(height: height,weight: weight);

               Navigator.push(context, MaterialPageRoute (builder:(context)=> BResult(
                 bmiResult:bmiclc.findBmi() ,
                 resultText: bmiclc.getBmi(),
                 feedText: bmiclc.feedBack(),
               )),
               );
                },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text("Calculate Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                  ],
                ),
                height: 60,
                width: 325,
              ),
            ),
          ],
        ),
      )
    );
  }
}
class RIconButton extends StatelessWidget {
  RIconButton({this.icon,this.onPush});
  final IconData icon;
  final Function onPush;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        elevation: 10.5,
        fillColor: Colors.red,
        constraints: BoxConstraints.tightFor(
          width:45.0,height: 45.0,
        ),
        shape: CircleBorder(),
        onPressed:onPush,
    );
  }
}
