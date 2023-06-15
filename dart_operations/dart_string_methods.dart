void main(List<String> args) {

  // to upper case ,lower case
  
  String message = 'Hello, World!';
String upperCaseMessage = message.toUpperCase();
String lowerCaseMessage = message.toLowerCase();
print(upperCaseMessage); // Output: HELLO, WORLD!
print(lowerCaseMessage); // Output: hello, world!

// trim()  / trimLeft / trimRight

String messages = '   Hello, World!   ';
String trimmedMessage = messages.trim();
print(trimmedMessage); // Output: Hello, World!

// split()  /method splits a string into a list of substrings based on a specified delimiter.

String fruits = 'apple,banana,orange';
List<String> fruitsList = fruits.split(', ');
print(fruitsList);

// join()  /method concatenates the elements of a list into a single string, using a specified delimiter.

List<String> fruitList = ['apple', 'banana', 'orange'];
String fruit = fruitList.join(',');
print(fruit);

//replace All

String text = 'Hello, World!';
String replacedMessage = text.replaceAll('Hello', 'Hi');
print(replacedMessage); // Output: Hi, World!


// conatain()  /method checks if a list or string contains a specified value and returns a boolean result.

List<int> numbers = [1, 2, 3, 4, 5];
bool containsThree = numbers.contains(3);
print(containsThree); // Output: true

String sample = 'Hello, World!';
bool containsHello = sample.contains('Hello');
print(containsHello); // Output: true

// indexOf() and lastIndexOf(): / method returns the index of the first occurrence of a specified value in a list or string, while lastIndexOf() returns the index of the last occurrence.

List<int> num = [1, 2, 3, 4, 3, 5];
int firstIndex = num.indexOf(3);
int lastIndex = num.lastIndexOf(3);
print(firstIndex); // Output: 2
print(lastIndex); // Output: 4

String samples = 'Hello, World!';
int index = samples.indexOf('o');
print(index); // Output: 4

// forEach()  

List<int> arr = [1, 2, 3, 4, 5];
arr.forEach((arr) {
  print(arr);
});

// ceil() /method rounds a number up to the nearest integer greater than or equal to it,
// floor()/rounds a number down to the nearest integer less than or equal to it.

double number = 3.7;
int ceilValue = number.ceil();
int floorValue = number.floor();
print(ceilValue); // Output: 4
print(floorValue); // Output: 3

// round()

double n = 3.5;
int roundedValue = n.round();
print(roundedValue); // Output: 4

// compareTo() / method compares two numbers and returns a negative value if the first number is less than the second, a positive value if the first number is greater, and 0 if they are equal.

int number1 = 5;
int number2 = 7;
int comparisonResult = number1.compareTo(number2);
print(comparisonResult); // Output: -1


}