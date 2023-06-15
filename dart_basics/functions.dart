void main(List<String> args) {
  
print(sum(10, 20));
print(multiple(num1: 5,num2: 5));
print(substraction(10));
print(division(100,25));
 
}
// positional parameter
 dynamic sum(var num1,var num2){
    return num1 + num2;
  }

  // named parameter
dynamic multiple({var num1,var num2}){
    return num1 * num2;
  }

  // optional paramter  ----  //default parameter
dynamic substraction(var num1,{var num2 = 5}){
    return num1 - num2;
  }

  dynamic division(var num1,[var num2 = 2] ){
    return num1 / num2;
  }

  

