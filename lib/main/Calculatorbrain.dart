import 'dart:math';

class Calculatorbrain {


  double height;
  double weight;
  double _BMI=0;
  Calculatorbrain(
    this.height,
    this.weight,
  );

    String BmiResult(){
      _BMI=weight/pow(height/100, 2);
      return _BMI.toStringAsFixed(1);
    }


    String getResult(){
      if (_BMI>=25){
        return "Oberweight";
      }else if(_BMI>=18.5){
        return "Normal";
      }else{
        return "Underweight";
      }
    }

    getInter(){
      if (_BMI>=25){
        return "You have a higher than normal body weight. Try to exercise more.";
      }else if(_BMI>=18.5){
        return "You have a normal body weight. Good job!";
      }else{
        return "You have a lower than normal body weight. You can eat a bit more.";
      }
    }

}