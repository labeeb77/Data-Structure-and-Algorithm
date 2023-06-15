//----------------------Without using map-----------------------//

class HashMap {
  List<dynamic> list = [[], [], [], [], []];

  int findindex(String str) {
    int ascii = 0;

    for (int i = 0; i < str.length; i++) {
      int a = str.codeUnits[i];
      ascii = ascii + a;
    }

    int result = ascii % str.length;                      
    return result;
  }

  void add(String str,dynamic value) {
    int index = findindex(str);
    list[index] = [str,value];
  }

  void remove(String str) {
    int index = findindex(str);
    list[index] = null;
  }

  dynamic get(String str) {
    int index = findindex(str);
    return list[index];
  }

  void display() {
    for (int i = 0; i < list.length; i++) {
      if(list[i].isNotEmpty)
      {print(list[i]);}
    }
  }
}

void main() {
  HashMap hashMap = HashMap();
  hashMap.add('name', 'labeeb');
  hashMap.add('age', 25);
  hashMap.add('city', 'india');
  hashMap.display();

}