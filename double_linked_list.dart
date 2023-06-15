class Node{
  int? data;
  Node? next;
  Node? prev;

  Node(int data){
    this.data = data;
  }
}
class DLinkedList{
  dynamic head = null;
  dynamic tail = null;

  void addNode(int data){
    Node newNode = new Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;

  }

  // void removeDuplicatesSorted(){
  //   Node? current = head;
  //   while(current !=null){
  //     Node? next = current.next;
  //     while(next != null && next.data == current.data){
  //       next = next.next;
  //     }
  //     current.next = next;

  //     if(next == tail && current.data == next?.data){
  //       tail = current;
  //       tail?.next = null;

  //     }
  //     current = next;
  //   }
  // }
  // void removeDuplicates(){
  //   if(head == null){
  //     return;
  //   }
  //   Node? current = head;
  //   while(current != null){
  //     Node? next = current.next;
  //     if(next != null && next.data == current.data){
  //       next = next.next;
  //     }
  //     current = next;
  //   }
  // }
  

  void display(){
    Node? temp = head;
    while(temp !=null){
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayReverse(){
    Node? temp = tail;
    while(temp !=null){
      print(temp.data);
      temp = temp.prev;
    }
  }
}

 void main(List<String> args) {
  DLinkedList list = new DLinkedList();
  list.addNode(6);
  list.addNode(3);
  list.addNode(6);
  list.addNode(3);
  list.addNode(6);


  list.display();

  
  
}