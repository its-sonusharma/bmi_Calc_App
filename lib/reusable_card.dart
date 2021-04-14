import 'package:flutter/cupertino.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: cardChild,
          decoration: BoxDecoration(
            color: rang,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )
          ),
          height: 160.0,
          width: 160.0,
        ),
      ),
    );
  }
}