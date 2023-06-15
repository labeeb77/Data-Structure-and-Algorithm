void main(List<String> args) {
  List<int>numbers = [1,2,3,4,5];
  List<String>fruits = ["Apple","banana","orenge"];

  //to access elements

  int firstNumber = numbers[0];
  int lastNumber = numbers[numbers.length-1];
  print(lastNumber);

  //to modify

  numbers[2] = 10;
  print(numbers);

  // to add elements

  numbers.add(6);
  numbers.insert(0, 0);
  numbers.addAll([6,7,8]);

  // Removing elements

  numbers.remove(3);
  numbers.removeAt(1);
  numbers.removeLast();
  numbers.removeRange(0, 2);

  // itrating list

  for(int result in numbers){
    print(result);
  }

  //sort the list

  numbers.sort();// for ascending
  numbers.sort((a,b)=> b.compareTo(a));
}