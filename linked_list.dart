class Node {
  int? data;
  Node? next;

  Node(int data){
    this.data = data;
  }
}
class SLinkedList {
  dynamic head = null;
  dynamic tail = null;

  void addNode(int data){
    Node newNode = new Node(data);

    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
      
    }
    tail = newNode;

  }

  void display(){
    if(head == null){
      print("list is empty");
      return;
    }

    Node? temp = head;
    while(temp!=null){
print(temp.data);
   temp = temp.next;
    }
  }

  void delete(int data){
    Node? temp = head, prev = null;
    if(temp !=null && temp.data == data){
      head = temp.next;
      return;
    }
    while (temp != null && temp.data !=data){
      prev = temp;
      temp = temp.next;

    }
    if(temp == null){
      print("value not founded in list");
      return;
    }
    if(temp == tail){
      tail = prev;
      tail?.next = null;
      return;
    }
    prev?.next = temp.next;
    
  }
  void insertFirst (int data){
    Node newNode = new Node(data);
    newNode.next = head;
    head = newNode;
  }

  void insertLast (int data){
    Node newNode = new Node(data);
    Node? temp = head;
    if(head == null){
      head = newNode;
    } else {
      

      while(temp?.next != null){
        temp = temp?.next;

      }
      temp?.next = newNode;
      tail = newNode;


      
      

    }
  }


  void insertAfter(int nextTo, int data){
    Node newNode = new Node(data);
    Node? temp = head;
    
    while(temp != null && temp.data !=nextTo){
      temp = temp.next;
    }
    if(temp == null){
      return;
    }
    if(temp == tail){
      tail?.next = newNode;

      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
    
  }
   
  void updatePosition(int index, int data){
    int currentIndex = 0;
    Node? temp = head;
    while(temp != null){
      if(currentIndex == index){
        temp.data = data;
        return;
      }
      currentIndex++;
      temp = temp.next;
    }
  }

  void updateData(int data, int newData){
    
    Node? temp = head;

    while(temp !=null){
      if(temp.data == data){
        temp.data = newData;
        return;
      }
      temp = temp.next;
    }
  }
}


 void main(List<String> args) {
  SLinkedList list = SLinkedList();

  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  
  
   list.display();

  // list.display();
  // list.delete(40);
  // list.display();
  print("----------------");
   list.delete(40);
   list.display();
  // list.updatePosition(4, 5);
  // list.updateData(5, 100);

  // convert an array to a linked list
  // List<int>arr = [1,2,3,4,5];
  // for(int i=0;i<arr.length;i++){
  //   list.addNode(arr[i]);
  // }
 
 // list.display();

}