class Person {
  String? _name;

  Person(this._name);

  String? get name{
    return _name;
  }

  set name(String? newName){
    _name = newName;
  }
}

class Circle{
  double? _radius;

  Circle(this._radius);

  double? get radius{
  return _radius;
  }

  set radius(double? newRadius){
    if(newRadius! > 0){
  _radius = newRadius;
    }else{
      print("not possible");
    }
    
  }

  double get area{
    return 3.14 * _radius! * _radius!;

  }
}

void main(List<String> args) {
  var person1 = Person('labeeb ak');
  // print(person1.name);
  person1.name = 'mohammed';
  // print(person1.name);

  // circle

  var circle1 = Circle(5.0);
  print(circle1.radius);
  print(circle1.area);

  circle1.radius = 7.0;
  print(circle1.radius);
  print(circle1.area);
}