 List<int> mergeSort(List<int> arr) {
    if (arr.length < 2) {
      return arr;
    }
    int middle = arr.length ~/ 2;

    List<int> leftHalf = arr.sublist(0, middle);
    List<int> rightHalf = arr.sublist(middle);
  // recursively sort left and right values
  leftHalf = mergeSort(leftHalf);
  rightHalf = mergeSort(rightHalf);
   return join(leftHalf, rightHalf);
  }

  // --to merge back --//
  List<int> join(List<int> leftHalf, List<int> rightHalf) {
    List<int> mergedArray = [];
    int leftIdx = 0;
    int rightIdx = 0;

    while (leftIdx < leftHalf.length && rightIdx < rightHalf.length) {
      if (leftHalf[leftIdx] <= rightHalf[rightIdx]) {
        mergedArray.add(leftHalf[leftIdx]);
        leftIdx++;
      } else {
        mergedArray.add(rightHalf[rightIdx]);
        rightIdx++;
      }
    }
    if (leftIdx < leftHalf.length) {
      mergedArray.addAll(leftHalf.sublist(leftIdx));
    } else {
      mergedArray.addAll(rightHalf.sublist(rightIdx));
    }
    return mergedArray;
  }
  void main(List<String> args) {
  
}