void main(List<String> args) {
List<int>arr = [3,5,2,4,1,6];

  List<int> bubbleSort(List<int>arr){
    for(int i=0;i<arr.length-1;i++){
      for(int j=i+1;j<arr.length-1;j++){
        if(arr[i]>arr[j]){
          int temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }
    return arr;
  }
  print(bubbleSort(arr));
}