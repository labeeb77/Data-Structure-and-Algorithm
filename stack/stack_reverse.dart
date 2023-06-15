class Node {
  int? data;
  Node? next;

  Node(data) {
    this.data = data;
  }
}

class Stack {
  Node? top;

  // ... existing methods ...
  
  void push(int data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
      return;
    }
    newNode.next = top;
    top = newNode;
  }

  // reverse
  void reverse() {
    if (top == null || top?.next == null) {
      return; // Stack is empty or contains only one element, no need to reverse
    }

    Node? prev = null;
    Node? temp = top;
    Node? next;

    while (temp != null) {
      next = temp.next; // Save the next node
      temp.next = prev; // Reverse the link

      // Move to the next pair of nodes
      prev = temp;
      temp = next;
    }

    top = prev; // Set the reversed top node as the top of the stack
  }

  // display
  void display() {
    if (top == null) {
      print("Stack is empty");
      return;
    }

    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  Stack stack = Stack();

  stack.push(100);
  stack.push(200);
  stack.push(300);
  stack.push(400);
  stack.push(500);

  stack.display();
  print("After reversing:");
  stack.reverse();
  stack.display();
}
