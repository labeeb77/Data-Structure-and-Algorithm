class Node{
  String? data;
  Node? next;

  Node(String data){
    this.data = data;
  }
}

class Stack {
  Node? top;

  //push
  void push(String data){
    Node newNode = Node(data);
    if(top == null){
      top = newNode;
      return;
    }
    newNode.next = top;
    top = newNode;
  }

  //pop

  String? pop(){
    if(top == null){
      print("Stack underflow");
      return null;
    }
    String? poppedData = top!.data;
    top = top!.next ;
    return poppedData;
  }
  // display

  void display(){
    if(top==null){
      print("stack is empty");
      return;
    }
    Node? temp = top;
    while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }

  // reverse a string

  void reverseString(String str){
    // Push each character of the input string onto the stack
    for(int i=0;i<str.length;i++){
      String character = str[i];
      push(character);
    }

     // Pop the characters from the stack to reverse the string
     String reversedString = '';
     while(top !=null){
      String? poppedCharacter = pop();
      if(poppedCharacter != null){
        reversedString  +=  poppedCharacter;
      }
     }
     print('Reversed string: $reversedString');
  }

}
void main(List<String> args) {
  Stack stack = Stack();
  // stack.push('aaaaa');
  // stack.push('bbbbbb');
  // stack.push('ccccc');

  // stack.display();
  // print("after pop");
  // print(stack.pop());
  stack.reverseString('labeeb');
}