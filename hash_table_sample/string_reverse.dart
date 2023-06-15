class HashMap {
  List<dynamic> list = [[], [], [], [], []];

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
    list[index] = [str, value];
  }

  dynamic get(String str) {
    int index = findIndex(str);
    return list[index];
  }

  String reverseString(String str) {
    HashMap hashMap = HashMap();

    for (int i = 0; i < str.length; i++) {
      String character = str[i];
      hashMap.add(character, i);
    }

    String reverseString = '';
    for (int i = 0; i < str.length; i++) {
      String character = str[i];
      int index = hashMap.get(character)[1];
      reverseString = character + reverseString;
    }
    return reverseString;
  }
}

void main(List<String> args) {
  HashMap hashMap = HashMap();
  print(hashMap.reverseString('labeeb'));
}
