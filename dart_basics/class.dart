class Person {
  String? name;
  int? age;

  //default constructor

  Person( this.name,[this. age = 22]);

  //named constructor
  
  Person.guest(){
    name = 'guest';
    age = 15;
  }


  void showOutPut(){
    print(name);
    print(age);
  }
}

void main(List<String> args) {
  Person person1 = Person('labeeb',44);
  // person1.name = 'labeeb';
  // person1.age = 22;

 var person2 = Person('mohammed',10);

 var person3 = Person.guest();
  person3.showOutPut();
}