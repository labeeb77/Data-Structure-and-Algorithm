
  // ----------- stack in linked list-------------//
  class Node{
    int? data;
    Node? next;

    Node(int data){
      this.data = data;
    }
  }

  class Stack{
    Node? top ;

    void push(int data){
      Node newNode = Node(data);
      if(top == null){
        top = newNode;
      }else{
        newNode.next = top;
        top = newNode;
      }
    }

    void pop(){

      if(top == null){
        print("stack underflow");
      }
      top = top!.next;
    }

    void display(){
      Node? temp = top;
      while(temp != null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }


void main(List<String> args) {

  //-----------stack in array -----------//
//List<int> stack = [];
// push
// stack.add(1);
// stack.add(2);
// stack.add(3);
// stack.add(4);
// stack.add(5);

// print(stack);

// // pop
// int top = stack.length-1;
// stack.removeLast();
// print(stack);

// // peek
// print(top);

Stack list = Stack();

list.push(10);
list.push(20);
list.push(30);
list.push(40);
list.push(50);

print("after push");
list.display();
print("after pop");
list.pop();
list.display();
}