// class Node{
//   int? data;
//   Node? left,right;

//   Node(this.data);

// }
// class BinarySearchTree{
//   Node? root;

//   void insert(int data){
//     Node newNode = Node(data);
//     if(root == null){
//       root = newNode;
//       return;
//     }
//     Node? temp = root;
//     while(true){
//       if(data<temp!.data!){
//         if(temp.left == null){
//           temp.left = newNode;
//           break;
//         }
//         temp = temp.left;
//       }
//       else if(temp)
//     }
//   }
// }

class Heap{
  List heap = [];
  Heap(List array){

  }

  void buildHeap(List array){
    heap  =array;
    
  }

  int getParent(int i){
    return (i-1)~/2;
  }
  int leftChild(int i){
    return (2*i)+1;
  }
  int rightChild (int i){
    return (2*i)+2;
  }
  void sort(int i ,int j){
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}