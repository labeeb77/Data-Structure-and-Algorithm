 abstract class Shape {
  int? x;  // instance variable
  int? y;
    
   void draw();   // abstract method , it only with in abstaract class

   void normalFunction(){

   }

}

class Rectangle extends Shape{

  void draw(){
    print("drawing rectangle");
  }
  
}

class Circle extends Shape{
  void draw(){
      print("drawing circle");
  }
}
void main(List<String> args) {
  var rectangle = Rectangle();
  rectangle.draw();

  var circle = Circle();
  circle.draw();
}