// bubble sort
List<int>bubbleSort(List<int>arr){
  for(int i=0;i<arr.length;i++){
    for(int j=i+1;j<arr.length;j++){
      if(arr[i]>arr[j]){
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  return arr;
}

// insertion sort

List<int>insertionSort(List<int>arr){
  for(int i=1;i<arr.length;i++){
    int temp = arr[i];
     int j= i-1;
     

     while(j>=0 && arr[j]>temp ){
      arr[j+1] = arr[j];
      j--;
     }
     arr[j+1]=temp;
  }
  return arr;
}

// selection sort
List<int>selectionSort(List<int>arr){
  for(int i=0;i<arr.length;i++){
    int min = i;
    for(int j=i+1;j<arr.length;j++){
      if(arr[j]<arr[min]){
        min = j;
      }
      int temp = arr[i];
      arr[i] = arr[min];
      arr[min] = temp;

    }
  }
  return arr;
}

//QuickSort

List<int>quickSort(List<int>arr){
  if(arr.length<2){
    return arr;
  }
  else{
int pivot = arr.length-1;
List<int>left = [];
List<int>right = [];
for (int i=0;i<arr.length-1;i++){
  if(arr[i]<arr[pivot]){
    left.add(arr[i]);
  }else{
    right.add(arr[i]);
  }

  }
  return [...quickSort(left),arr[pivot],...quickSort(right)];
  }
  
}

