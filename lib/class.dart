import 'dart:ffi';

void main (){
 person person1 = person(name: "susan", age: 20, gender: "Female");
 person1.name = "Susan";
 print(person1.name);
 person1.age =20;
 print(person1.age);
 person1.gender ="Female";
 print(person1.gender);


}

class person{
  String ?name;
  int ?age;
  String ?gender;
  person({
    required this.name,
    required this.age,
    required this.gender,
});
  void greetings(String Studentname){
    print("Chillday");
  }
}



