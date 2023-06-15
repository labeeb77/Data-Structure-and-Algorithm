class BinarySearch {
  
// ---------- iteration-----------//

  int binaryIter(List<int> array, int target) {
    int startIndex = 0;
    int endIndex = array.length - 1;

    while (startIndex <= endIndex) {
      int middle = startIndex + (endIndex - startIndex) ~/ 2;
      if (array[middle] == target) {
        return middle;
      } else if (array[middle] > target) {
        endIndex = middle - 1;
      } else if (array[middle] < target) {
        startIndex = middle + 1;
      }
    }
    return -1;
  }

  //---------------Recursion-----------------//

  int binaryRec(List<int> array, int target) {
    return binaryHelpRec(array, target, 0, array.length);
  }

  int binaryHelpRec(List<int> array, int target, int startIndex, int endIndex) {
    if (startIndex >= endIndex) {
      return -1;
    }
    int middle = startIndex + (endIndex - startIndex) ~/ 2;
    if (array[middle] == target) {
      return middle;
    } else if (array[middle] > target) {
      return binaryHelpRec(array, target, startIndex, middle - 1);
    } else if (array[middle] < target) {
      return binaryHelpRec(array, target, middle + 1, endIndex);
    }
    return -1;
  }
}

void main(List<String> args) {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8];
  // print(BinarySearch().binaryIter(array, 8));
  print(BinarySearch().binaryRec(array, 8));
}
