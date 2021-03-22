import 'dart:math';

class CalculateBMI{
 CalculateBMI({this.weight,this.height});
  final int height;
  final int weight;

  double _bmi;

  String findBmi(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getBmi(){
    if(_bmi >= 25) {
      return 'OverWeight';
    }else if (_bmi >= 18.5) {
      return 'Normal';
    }else {
      return 'underWeight';
    }
  }
  String feedBack(){
    if(_bmi >= 25) {
      return 'Mota h bhai excersise kara kar';
    }else if (_bmi >= 18.5) {
      return 'Normal h bhai , to jaida Khush mat hojio';
    }else  {
      return 'Kuch kha bhi lia kar bhai aise kaam thode chalega';
    }
  }
}