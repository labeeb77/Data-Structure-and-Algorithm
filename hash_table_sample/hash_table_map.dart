void main() {

  //----------------------Hash table using map---------------------//

  // create a hash table
  Map<String, int> myMap = {
    'John': 25,
    'Mary': 30,
    'Tom': 35,
  };
  
  // add a new key-value pair
  myMap['Peter'] = 40;
  
  // get a value for a key
  int? johnAge = myMap['John'];
  print('John is $johnAge years old.');
  
  // check if a key exists
  bool hasTom = myMap.containsKey('Tom');
  print('Tom exists: $hasTom');
  
  // remove a key-value pair
  myMap.remove('Mary');
  print('Mary has been removed.');
  
  // iterate over the key-value pairs
  myMap.forEach((key, value) => print('$key is $value years old.'));
}

