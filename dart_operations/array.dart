

void main(List<String> args) {
  List<int>array = [1,2,3,4];
 int sum = 0;
  // avarage

for(int i=0;i<array.length;i++){
   sum = sum + array[i];
}
double avarage = sum/array.length;
// print(avarage);

   // avarage using method

  var avarages = array.reduce((value, element) => value + element) / array.length;
  // print(avarages);

  //=============================//

  // find largest number

  List<int>arr1 = [9,4,7,6,2,4,5];

  int max = arr1[0];
  for(int i=0;i<arr1.length;i++){
    if(arr1[i]> max){
      max = arr1[i];
    }
  }
 // print(max);

 //reverse an array

List<int>arr2 = [9,4,7,6,2,4,5];
List<int>revesed = [];

for(int i=arr2.length-1;i>=0;i--){
  revesed.add(arr2[i]);
}
print(revesed);

// using while loop

int start = 0;
int end = arr2.length-1;

while(start<end){
  int temp = arr2[start];
  arr2[start] = arr2[end];
  arr2[end] = temp;

  start++;
  end--;
}
print(arr2);

//Remove duplicates from an array.

List<int>arr3 = [4,4,7,6,6,4,5];
List<int>uniqueNumbers = [];

for(int i=0;i<arr3.length;i++){
  if(!uniqueNumbers.contains(arr3[i])){
    uniqueNumbers.add(arr3[i]);
  }
}
print(uniqueNumbers);


//Find the second largest element in an array.
List<int>arr4 = [4,7,6,9,5];
int maxi = arr4[0];
int secndMax = arr4[0];

for(int i=0;i<arr4.length;i++){
  if(arr4[i]>maxi){
    secndMax = maxi;
    maxi = arr4[i];

  }else if(arr4[i]<maxi && arr4[i]>secndMax){
    secndMax = arr4[i];
  }
}
print(maxi);
print(secndMax);

}