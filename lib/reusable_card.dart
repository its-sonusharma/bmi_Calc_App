import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.rang,this.cardChild , this.onPress});
  final Color rang;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin:EdgeInsets.only(left:25.0,top: 10.0,right: 10.0,bottom: 10.0),
        decoration: BoxDecoration(
          color: rang,
          borderRadius: BorderRadiusDirectional.circular(100.0),
        ),
        height: 150.0,
        width: 150.0,
      ),
    );
  }
}