void heapSort(List<int> arr) {
  final int n = arr.length;

  // Build heap (rearrange array),and start from last non-leaf node to root
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(arr, n, i);
  }

  // One by one extract an element from heap
  for (int i = n - 1; i >= 0; i--) {
    // Move current root to end
    int temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    // call min heapify on the reduced heap
    heapify(arr, i, 0);
  }
}

void heapify(List<int> arr, int n, int i) {
  int largest = i; // Initialize smallest as root
  int leftChild = 2 * i + 1;
  int rightChild = 2 * i + 2;

  // If left child is smaller than root
  if (leftChild < n && arr[leftChild] > arr[largest]) {
    largest = leftChild;
  }

  // If right child is smaller than smallest so far
  if (rightChild < n && arr[rightChild] > arr[largest]) {
    largest = rightChild;
  }

  // If smallest is not root
  if (largest != i) {
    int swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    // Recursively heapify the affected sub-tree
    heapify(arr, n, largest);
  }
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];
  print('Original array: $arr');

  heapSort(arr);

  print('Sorted array: $arr');
}