import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  IconContent({this.icon,this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(height: 20.0,),
        Text(label,
        style: labelText,),
      ],
    );
  }
}