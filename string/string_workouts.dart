void main(List<String> args) {
    String str = "labeeb";
    String reversed = '';
    for(int i=str.length-1;i>=0;i--){
      reversed += str[i];
    }
   // print(reversed);

    String reverse = str.split('').reversed.join('');
    print(reverse);

}