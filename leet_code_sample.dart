List<int> possibleSum(List<int>arr,int target){
    for(int i=0;i<arr.length;i++){
        for(int j=i+1;j<arr.length;j++){
            if(arr[i]+arr[j]==target){
                return [arr[i],arr[j]];
            }
           
        }
    }return [];
}
void main(){
    List<int>arr = [ 2,7,11,15];
   int target = 9;
    print(possibleSum(arr,target));
}