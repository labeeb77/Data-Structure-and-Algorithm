class Node{
  int? data;
  Node? next;

  Node(int data){
    this.data = data;
  }
}

class Queue{
  Node? front ;
  Node? rear;

  void enqueue(int data){
    Node newNode = Node(data);
    if(rear == null){
      rear = newNode;
      front = newNode;
      return;
    }
    rear!.next = newNode;
    rear = newNode;

  }

  void dequeue(){
    if(front == null){
      print("empty");
    }
    front = front!.next;
    if(front == null){
      rear = null;
    }


  }

  void display(){
    Node? temp = front;
    while(temp != null){
      print(temp.data);
      temp = temp.next;

    }
  }
}
void main(List<String> args) {
  Queue list = Queue();

  list.enqueue(100);
  list.enqueue(200);
  list.enqueue(300);
  list.enqueue(400);
  list.enqueue(500);
print("after enqueue");
  list.display();

  print("after dequeue");
list.dequeue();
list.display();
}