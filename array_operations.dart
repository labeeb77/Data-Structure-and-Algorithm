//------------------Duplicates------------

 void printDuplicates(List<int>array){
  int count = 0;
  for(int i=0;i<array.length;i++){
    for(int j=i+1;j<array.length;j++){
      if(array[i]==array[j]){
        count++;
        print("Duplicates are");
        print(array[i]);
        
      }
    }
  }
  print("total duplicates");
  print(count);
}

//---------------unique element----------------
 
//  void printUnique(List<int>arr){
//   bool isDuplicate;
//   for(int i=0;i<arr.length;i++){
//     isDuplicate = false;
//     for(int j=i+1;j<arr.length;j++){
//       if(arr[i]== arr[j]){
//         isDuplicate = true;
//         break;
//       }

//     }
//     if(!isDuplicate){
//       print("unique elements");
//       print(arr[i]);
//     }
//   }
//  }

void printUnique(List<int> arr) {
  int n = arr.length;
  bool isDuplicate;

  // Check each element against every other element
  for (int i = 0; i < n; i++) {
    isDuplicate = false;
    for (int j = i + 1; j < n; j++) {
      if (arr[i] == arr[j]) {
        isDuplicate = true;
        break;
      }
    }
    if (!isDuplicate) {
      print('Unique element: ${arr[i]}');
    }
  }

  //----------prime numbers----------

  
}
void printPrimes(List<int> arr){
    bool isPrime;
    for(int i=2;i<arr.length;i++){
      isPrime = true;
      for(int j=2;j<i;j++){
        if(i%j == 0){
          isPrime = false;
        break;
        }
      }
      if(isPrime){ 
        print(arr[i]);

      }
    }
  }

  


  

void main(List<String> args) {
   List <int> array = [1,2,3,4,6,7,8,8,9,];
  // // printDuplicates(array);
  // int n = 20;
    printPrimes(array);
  // String str = "Hello, World!";
  // for(int i=0;i<str.length-1;i++){
  //   print(str[i]);
  // }
//  printUnique(array);

}

