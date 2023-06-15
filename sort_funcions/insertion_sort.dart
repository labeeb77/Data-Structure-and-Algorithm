void main(List<String> args) {
  List<int>arr = [3,5,2,4,1,6];

List<int>insertionSort(List<int>arr){
  for(int i=1;i<arr.length-1;i++){
    int temp  = arr[i];
    int j = i-1;

    while(j>=0 && arr[j]>temp){
      arr[j+1] = arr[j];
      j--;
    }
    arr[j+1] = temp;
  }
  return arr;
}
print(insertionSort(arr));
}