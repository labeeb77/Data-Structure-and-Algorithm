class Node{
  int? data;
  Node? next;

  Node(int data){
    this.data = data;
  }
}
class LinkedList {
  dynamic head = null;
  dynamic tail = null;

  void addNode(int data){
    Node newNode = new Node(data);

    if(head == null){
      head = newNode;
    }
    else{
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
  void deleteFirstNode(){
    if(head == null){
      print("list is empty");
      return;
    }
    head = head.next;
    if(head == null){
      tail = null;
    }

  }

  void deleteLastNode(){
    if(head == null){
      print("list is empty");
      return;
    }
    if(head.next == null){
      head == null;
      tail == null;
      return;
    }

Node? temp  = head;
while(temp?.next?.next != null){
  temp = temp?.next;
}
temp?.next = null;
tail = temp;


  }
  void insertFirst( int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
      tail = newNode;
    }
    newNode.next = head;
    head = newNode;
  }
  void insertLast(int data){
    Node newNode = Node(data);
    Node?temp = head;

    if(head == null){
      head = newNode;
      tail = newNode;
    }
    while(temp?.next != null){
      temp = temp?.next;
    }
    temp?.next = newNode;
    tail = newNode;
    
  }
  void insertAfter(int nextTo, int data){
    Node newNode = new Node(data);
    Node? temp = head;
    while(temp != null && temp.data != nextTo){
      temp = temp.next;
    }
    if(temp == null){
      return;
    }
    if(temp == tail){
      tail.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }
  void updateData(int data , int newData){
    Node? temp = head;
    while(temp != null){
      if(temp.data == data){
        temp.data = newData;
        return;
        
      }
      temp = temp.next;
    }
  }
  void updatePosition(int index , int data){
    Node? temp = head;
    int currentIndex = 0;
    while(temp!=null){
      if(currentIndex == index ){
        temp.data = data;
      }
      currentIndex ++;
      temp = temp.next;
    }
  }
}
void main(List<String> args) {
  LinkedList list = new LinkedList();
  // List<int>array= [100,200,300,400];
  // for(int i=0;i<array.length;i++){
  //   list.addNode(array[i]);
  // }

  list.addNode(100);
  list.addNode(200);
  list.addNode(300);
  list.addNode(400);
  list.addNode(500);
 list.display();
 print('------------');
//  list.deleteLastNode();
// list.insertLast(50);
list.updatePosition(4, 111);
 list.display();

  
}