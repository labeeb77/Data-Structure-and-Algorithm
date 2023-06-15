

class Sort {
  //----------------------Bubble sort----------------

  List bubbleSort(List<int> array) {
    for (var i = 0; i < array.length; i++) {
      for (var j = i + 1; j < array.length; j++) {
        if (array[i] > array[j]) {
          int temp = array[i];
          array[i] = array[j];
          array[j] = temp;
        }
      }
    }
    return array;
  }

  //---------------------Insertion sort---------------

  List insertionSort(List<int> array) {
    for (var i = 1; i < array.length; i++) {
      int temp = array[i];
      int j = i - 1;

      while (j >= 0 && array[j] > temp) {
        array[j + 1] = array[j];
        j--;
      }
      array[j + 1] = temp;
    }
    return array;
  }

  //-------------------Selection sort--------------

  List selectionSort(List<int> array) {
    for (var i = 0; i < array.length - 1; i++) {
      int min = i;
      for (var j = i + 1; j < array.length; j++) {
        if (array[j] < array[min]) {
          min = j;
        }
      }
      int temp = array[i];
      array[i] = array[min];
      array[min] = temp;
    }
    return array;
  }
  //---------------------- Quick sort----------------

  List quickSort(List<int> array) {
    quickSortHelper(array, 0, array.length - 1);

    return array;
  }

  quickSortHelper(List<int> array, int startIdx, int endIdx) {
    if (startIdx >= endIdx) {
      return;
    }
    int pivot = startIdx;
    int leftIdx = startIdx + 1;
    int rightIdx = endIdx;

    while (array[leftIdx] > array[pivot] && array[rightIdx] < array[pivot]) {
      int temp = array[leftIdx];
      array[leftIdx] = array[rightIdx];
      array[rightIdx] = temp;
      leftIdx++;
      rightIdx--;
    }
    if (array[leftIdx] <= array[pivot]) {
      leftIdx++;
    }
    if (array[rightIdx] >= array[pivot]) {
      rightIdx--;
    }
    int temp = array[rightIdx];
    array[rightIdx] = array[pivot];
    array[pivot = temp];
    quickSortHelper(array, startIdx, rightIdx - 1);
    quickSortHelper(array, leftIdx + 1, endIdx);
  }

  // --------------------quick sort simple------------

  List<int> quickSortSample(List<int> array) {
    if (array.length < 2) {
      return array;
    }
    int pivot = array.length - 1;
    List<int> left = [];
    List<int> right = [];

    for (int i = 0; i < array.length - 1; i++) {
      if (array[i] < array[pivot]) {
        left.add(array[i]);
      } else {
        right.add(array[i]);
      }
    }
    return [...quickSortSample(left), array[pivot], ...quickSortSample(right)];
  }

  // ----------------- Merge sort --------------//

  List<int> mergeSort(List<int> arr) {
    if (arr.length <= 1) {
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
}

void main(List<String> arguments) {
  Sort list = Sort();
  List<int> array = [6, 2, 7, 4, 8, 5];
  print(array);

  // print(list.bubbleSort(array));
  //print(list.insertionSort(array));
  //print(list.selectionSort(array));
  // print(list.quickSortSample(array));
  print("after merge sort");
  print(list.mergeSort(array));
}
