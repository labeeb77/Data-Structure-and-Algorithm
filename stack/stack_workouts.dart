class Node {
  int? data;
  Node? next;

  Node(data) {
    this.data = data;
  }
}

class Stack {
  Node? top;

  //push

  void push(int data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
      return;
    }
    newNode.next = top;
    top = newNode;
  }

  //pop
  void pop() {
    if (top == null) {
      print("Stack underflow");
    }
    top = top!.next;
  }

  // editTop
  void editTop(int newData) {
    if (top == null) {
      print("Stack is empty");
      return;
    }
    top!.data = newData;
  }
  //edit specific data(to do this we can tarverse the stack)

  void edit(int oldData, int newData) {
    Node? temp = top;
    while (temp != null) {
      if (temp.data == oldData) {
        temp.data = newData;
        return;
      }
      temp = temp.next;
    }
  }

  // edit middle element

  void editMiddle(int newData) {
    if (top == null) {
      return;
    } else {
      Node? slowptr = top;
      Node? fastPtr = top;

      while (fastPtr != null && fastPtr.next != null) {
        fastPtr = fastPtr.next!.next;
        slowptr = slowptr!.next;
      }
      slowptr!.data = newData;
    }
  }

  // print middle element

  void printMiddle() {
    if (top == null) {
      print("Stack is empty");
      return;
    } else {
      Node? slowptr = top;
      Node? fastPtr = top;

      while (fastPtr != null && fastPtr.next != null) {
        fastPtr = fastPtr.next!.next;
        slowptr = slowptr!.next;
      }
      int middel = slowptr!.data!;
      print(middel);
    }
  }

  // delete middle element

  void deleteMiddle() {
    if (top == null) {
      print("Stack is empty");
      return;
    }

    if (top!.next == null) {
      // Stack contains only one element
      top = null;
      return;
    }

    Node? slowPtr = top;
    Node? fastPtr = top;
    Node? prev = null;

    while (fastPtr != null && fastPtr.next != null) {
      fastPtr = fastPtr.next!.next;
      prev = slowPtr;
      slowPtr = slowPtr!.next;
    }

    if (prev != null) {
       // The middle element is  not the top element
      prev.next = slowPtr!.next;
    } else {
      // The middle element is the top element
      top = top!.next;
    }
  }
   // deleteElement
  void deleteElement(int target) {
    if (top == null) {
      print("Stack is empty");
      return;
    }

    Node? temp = top;
    Node? prev = null;

    while (temp != null && temp.data != target) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == null) {
      print("Element $target not found in the stack");
      return;
    }

    if (prev == null) {
      // The target element is the top element
      top = top!.next;
    } else {
      prev.next = temp.next;
    }
  }

  //display
  void display() {
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

  stack.deleteElement(300);
  stack.display();

  //  stack.display();
  //  stack.edit(300, 3000);
  //  print("after edt");
  //  stack.display();
  // // stack.pop();
  // // print("after pop");
  // // stack.display();
  // // stack.editTop(500);
  // // print("after editTop");
  // // stack.display();
}
