void main(List<String> args) {
  List<int> arr = [3, 5, 2, 4, 1, 6];

  List<int> selectionSort(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int min = i;
      for (int j = i + 1; j < arr.length - 1; j++) {
        if (arr[j] < arr[min]) {
          min = j;
        }
        int temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
      }
    }
    return arr;
  }

  print(selectionSort(arr));
}
