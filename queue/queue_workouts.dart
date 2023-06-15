class Node{
  int? data;
  Node? next;

  Node(data){
    this.data = data;
  }
}
class Queue{
  Node? front;
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
    rear == null;
  }
}

void display(){
  Node? temp = front;
  while(temp !=null){
    print(temp.data);
    temp = temp.next;
  }
}
 }

 void main(List<String> args) {
  Queue queue = Queue();

  queue.enqueue(1000);
  queue.enqueue(2000);
  queue.enqueue(3000);
  queue.enqueue(4000);
queue.display();
print("after dequeue");
queue.dequeue();
queue.display();
  
}