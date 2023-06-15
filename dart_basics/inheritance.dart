class Vehicle{
  String? model;
  int? year;

  Vehicle(this.model,this.year);

  void showOutPut(){
    print(model);
    print(year);
  }
}

class Car extends Vehicle{
double? price;

Car(String model,int year,this.price) :super(model,year);

void showOutPut(){
  super.showOutPut();
  print(this.price);
}
}

void main(List<String> args) {
  var car1 = Car('maruthi', 2016, 125000);
  car1.showOutPut();
}