// decalare and print 
void main(){
  String message = "Hello";
  print(message);

// print first character
  print(message.substring(0,1));
  //trim 
  String name = "   good morning   ";
  String trimmed = name.trim();
  print(trimmed);

  // replace a character

  String sample = "malayalam";
  String replaced = sample.replaceRange(4, 5, 's');
  print(replaced);

  // palindrome

  String palindrome = sample.split('').reversed.join('');
  if(sample == palindrome){
    print("palindrome");
  }else{
    print("not a palindrome");
  }

  //reversed 

  String reversed = sample.split('').reversed.join('');
  print(reversed);

  // replace a funtion to replace each alphebet to another 

  // String change(String str , int key){
  //   int newKey = key % 26;
  //   List<String> charArray = List<String>.filled(str.length, "");
  //   for(int i=0;i<str.length;i++){
  //     int letterPosition = 
  //   }

  // }
}
