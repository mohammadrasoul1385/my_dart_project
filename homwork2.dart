void main(){
  var samsung = Mobile(model: "s21" ,color: "black" ,weight:180,rate:8.5);
  var motorola = Mobile(model: "edge20" ,color: "red" ,weight:165 ,rate:5.5);
  print(motorola.model);
  print(samsung.color);
  print(samsung.weight);
  print(samsung.rate);
  print(motorola.model);
  print(motorola.color);
  print(motorola.rate);
  print(motorola.weight);}
class Mobile {
  var model;
  var color;
  var rate;
  var weight;
  models(){}
  colors(){}
  move(){
    this.rate=this.rate+1.5;
  }

  Mobile({this.model, this.color, this.rate, this.weight});}
