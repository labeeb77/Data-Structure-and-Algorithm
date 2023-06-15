import 'dart:math';

class Node {
  int? data;
  Node? left, right;

  Node(this.data);
}

class BinarySearchTree {
  Node? root;

//------- insertion-----------//

  void insert(int data) {
    Node newNode = Node(data);
    if (root == null) {
      root = newNode;
      return;
    }
    Node? temp = root;
    while (true) {
      if (data < temp!.data!) {
        if (temp.left == null) {
          temp.left = newNode;
          break;
        }
        temp = temp.left;
      } else {
        if (temp.right == null) {
          temp.right = newNode;
          break;
        }
        temp = temp.right;
      }
    }
  }

  //-------- check data contain --------//

  bool find(int target) {
    Node? temp = root;
    while (temp != null) {
      if (temp.data! > target) { 
        temp = temp.left;
      } else if (temp.data! < target) {
        temp = temp.right;
      } else {
        return true;
      }
    }
    return false;
  }

  //---------- Inoder--------

  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print('${node.data}');
      inOrderHelper(node.right);
    }
  }

  //-----------Preorder-------
  void preOrder() {
    prehelper(root);
  }

  void prehelper(Node? node) {
    if (node != null) {
      print('${node.data}');
      prehelper(node.left);
      prehelper(node.right);
    }
  }

  //-----------PostOrder--------

  void postorder() {
    posthelper(root);
  }

  void posthelper(Node? node) {
    if (node != null) {
      posthelper(node.left);
      posthelper(node.right);
      print('${node.data} ');
    }
  }

  //----------- find max value -------

void findMax(){
  final result = findMaxValue(root);
  print(result);
}
  int? findMaxValue(Node? node) {
    if (node == null) {
      return null;
    } else if (node.right == null) {
      return node.data;
    } else {
      return findMaxValue(node.right);
    }
  }

  // ------------- find min value-------

  void findmin() {
    final result = findminValue(root);
    print(result);
  }

  int? findminValue(Node? node) {
    if (node == null) {
      return null;
    } else if (node.left == null) {
      return node.data;
    } else {
      return findminValue(node.left);
    }
  }

  //----------- find closest--------

  int findClosest(int target) {
    Node? temp = root;
    int closest = temp!.data!;
    while (temp != null) {
      if ((target - closest).abs() > (target - temp.data!).abs()) {
        closest = temp.data!;
      }
      if (target < temp.data!) {
        temp = temp.left;
      } else if (target > temp.data!) {
        temp = temp.right;
      } else {
        break;
      }
    }
    return closest;
  }

  //------------- is BST--------------

  bool isBst() {
    return isBstHelper(root, 0, double.infinity);
  }

  bool isBstHelper(Node? currentNode, num min, num max) {
    if (currentNode == null) {
      return true;
    }
    if (min > currentNode.data! || max < currentNode.data!) {
      return false;
    }

    return isBstHelper(currentNode.left, min, currentNode.data! - 1) &&
        isBstHelper(currentNode.right, currentNode.data! + 1, max);
  }

  //------------ Delete data---------

  void remove(int data) {
    if (root == null) {
      return;
    }
    removeHelper(data, root, null);
  }

  void removeHelper(int data, Node? currentNode, Node? parentNode) {
    if (currentNode == null) {
      return;
    }
    while (currentNode != null) {
      if (data < currentNode.data!) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (data > currentNode.data!) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getMinimumValue(currentNode)!;
          removeHelper(currentNode.data!, currentNode.right, currentNode);
        } else {
          if (parentNode == null) {
            if (currentNode.right == null) {
              root = currentNode.left;
            } else {
              root = currentNode.right;
            }
          } else {
            if (parentNode.left == currentNode) {
              if (currentNode.right == null) {
                parentNode.left = currentNode.left;
              } else {
                parentNode.left = currentNode.right;
              }
            } else {
              if (currentNode.right == null) {
                parentNode.right = currentNode.left;
              } else {
                parentNode.right = currentNode.right;
              }
            }
          }
        }
        break;
      }
    }
  }

  int? getMinimumValue(Node? currentNode) {
    if (currentNode == null) {
      return null;
    }
    if (currentNode.left == null) {
      return currentNode.data;
    }
    return getMinimumValue(currentNode.left);
  }

   // Helper function to check if a number is prime
  bool isPrime(int number) {
    if (number <= 1) return false;
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  // Function to print prime numbers in the tree
  void printPrimeNumbers() {
    printPrimeNumbersHelper(root);
  }

  void printPrimeNumbersHelper(Node? node) {
    if (node != null) {
      if (isPrime(node.data!)) {
        print(node.data);
      }
      printPrimeNumbersHelper(node.left);
      printPrimeNumbersHelper(node.right);
    }
  }
}

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(3);
  bst.insert(60);
  bst.insert(40);
  bst.insert(50);
  bst.insert(20);
  bst.insert(90);
  bst.insert(80);
  print(bst.findClosest(36));
 print( bst.isBst());
  // bst.findMax();
  // print('preorder');
  // bst.preOrder();
  // print('inorder');
  // bst.inOrder();
  // print('postorder');
  // bst.postorder();
  // print(bst.find(60));
  bst.printPrimeNumbers();
}
