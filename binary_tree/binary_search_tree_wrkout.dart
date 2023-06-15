class Node{
  int? data;
  Node? left , right;

  Node(this.data);
}
class BinarySearchTree{
  Node? root;

  // insertion

 void insert(int data){
  Node newNode = Node(data);
  if(root == null){
    root = newNode;
    return;
  }
  Node? temp = root;
  while(true){
    if(data < temp!.data!){
      if(temp.left == null){
        temp.left = newNode;
        break;
      }
      temp = temp.left;
    } else{
      if(temp.right == null){
        temp.right = newNode;
        break;
      }
      temp = temp.right;
    }

  }
}

   // contain

   bool contain(int target){
    Node? temp = root;
    while(temp!=null){
      if(temp.data! > target){
        temp = temp.left;
      }else if(temp.data! < target){
        temp = temp.right;
      }else{
        return true;
      }
    }
    return false;
   }

   // find max value
   void findMax(){
    final result = findMaxValue(root);
    print(result);
   }

   int? findMaxValue(Node? node){
    if(node == null){
      return null;
    }else if(node.right == null){
      return node.data;
    }
    return findMaxValue(node.right);
   }

   //find min value

   void findMin(){
    final result = findMinValue(root);
    print(result);
   }

   int? findMinValue(Node? node){
    if(node == null){
      return null;
    }else if(node.left == null){
      return node.data;
    }
    return findMinValue(node.left);
   }

   // pre order

   void preorder(){
    preorderHelp(root);
   }

   void preorderHelp(Node? node){
    if(node !=null){
      print(node.data.toString());
      preorderHelp(node.left);
      preorderHelp(node.right);
    }
   }

   // inorder
   void inorder(){
    inOrderHelper(root);

   }

   void inOrderHelper(Node? node){
    if(node !=null){
      inOrderHelper(node.left);
      print(node.data.toString());
      inOrderHelper(node.right);
    }
   }

   // postorder
   void postorder(){
    postOrderHelper(root);

   }

   void postOrderHelper(Node? node){
    if(node !=null){
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data.toString());
    }
   }



}

void main(List<String> args) {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(20);
  tree.insert(13);
  tree.insert(16);
  // print(tree.contain(13));
  // tree.findMax();
  // tree.findMin();
  tree.postorder();
  
}