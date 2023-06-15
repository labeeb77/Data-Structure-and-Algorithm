void main(List<String> args) {
  List<int> arr = [3, 5, 2, 4, 1, 6];

  List<int> quickSort(List<int> arr) {
    
    if (arr.length < 2) {
      return arr;
    } else {
      int pivot = arr.length - 1;
      List<int> left = [];
      List<int> right = [];

      for (int i = 0; i < arr.length - 1; i++) {
        if (arr[i] < arr[pivot]) {
          left.add(arr[i]);
        } else {
          right.add(arr[i]);
        }
      }
      return [...quickSort(left), arr[pivot], ...quickSort(right)];
    }
  }

  print(quickSort(arr));
}
