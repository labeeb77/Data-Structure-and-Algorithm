class HashMap {
  List<dynamic>list = [[], [], [], [], []];

  int findIndex(String str) {
    int ascii = 0;

    for (int i = 0; i < str.length; i++) {
      int a = str.codeUnits[i];
      ascii = ascii + a;
    }
    int result = ascii % str.length;
    return result;
  }

  void add(String str, dynamic value) {
    int index = findIndex(str);
    List<dynamic> bucket = list[index];

    // Check if the bucket is empty

    if (bucket.isEmpty) {
      bucket.add([str, value]);
    } else {
      // Iterate through the bucket to check for collisions

      for (int i = 0; i < bucket.length; i++) {
        if (bucket[i][0] == str) {
          // Key already exists, update the value
          bucket[i][1] = value;
          return;
        }
      }
      // Key doesn't exist, add a new key-value pair to the bucket
      bucket.add([str, value]);
    }
  }

  void remove(String str) {
    int index = findIndex(str);
    List<dynamic> bucket = list[index];

// Iterate through the bucket to find the key-value pair
    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == str) {
        bucket.removeAt(i);
        return;
      }
    }
  }

  dynamic get(String str) {
    int index = findIndex(str);
    List<dynamic> bucket = list[index];

    // Iterate through the bucket to find the key-value pair
    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == str) {
        return bucket[i][1];
      }
    }
    return null;
  }

  void display(){
    for(int i=0;i<list.length;i++){
      List<dynamic>bucket = list[i];
      if(bucket.isNotEmpty){
        for(int j=0;j<bucket.length;j++){
          print(bucket[j]);
        }
      }
    }
  }
}


void main(List<String> args) {
   HashMap hashMap = HashMap();
   hashMap.add('name', 'babu');
   hashMap.add('age', 10);
   hashMap.add('place', 'kerala');
   hashMap.add('phone', 99736363);
   hashMap.add('city', 'malappuram');
   hashMap.add('country', 'india');

   hashMap.display();
   hashMap.remove('country');
   hashMap.remove('age');
   
   print(hashMap.get('phone'));
   

}