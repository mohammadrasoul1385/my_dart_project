main(){
  var person1 = Person(name: "mohammad", grade:10, ability:"swimming", weight:68);
  var person2 = Person(name: "Max", grade:6, ability:"fishing", weight: 62);

  print(person1.ability.toString() + " " + "good");
  print(person1.grade.toString() + " " + "well");
  print(person2.weight.toString() + " " + "fit");

}

class Person{
  var name;
  var grade;
  var ability;
  var weight;

  add_ability(){
    this.ability = this.ability +"drawing";
  }

  add_weight(){
    this.weight = this.weight + 5;
  }

  Person({this.name, this.grade, this.ability, this.weight});
}