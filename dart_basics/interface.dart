
void main(List<String> args) {
  var school = SchoolAbc();
  print(school.sumOfStudent(10, 20));
  
}

class School{
  dynamic sumOfStudent(int b,int g){
    return b + g;
  }

  dynamic sumOfTeachers(int b,int g){
    return b + g;
  }
}

class SchoolAbc implements School{

    dynamic sumOfStudent(int b,int g){
    return b + g;
  }

  dynamic sumOfTeachers(int b,int g){
    return b + g;
  }
}