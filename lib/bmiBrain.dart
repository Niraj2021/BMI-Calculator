
import 'dart:math';



class BmiBrain{

  int weight;
  int height;
  double _bmi;
  BmiBrain(this.weight,this.height);

  String calculateBmi()
  {

    _bmi=weight/pow(height/100, 2);

    return _bmi.toStringAsFixed(1);
  }
  String getResult()
  {

    if(_bmi >=25)
      {
        return "OverWeight";
      }
    else if(_bmi>=18.5)
      {
        return "Normal";
      }
    else
      {
        return 'UnderWeight';
      }
  }
  String getFeedBack()
  {
    if(_bmi>=25)
      {
        return 'You have more weight rathan than normal body weight.try to more excecise';
      }
    else if(_bmi>=18.5)
      {
        return 'You have normal body weight.Good Job !!';
      }
    else
      {
        return 'You have lower than normal body weight,try to gain it';
      }
  }
}