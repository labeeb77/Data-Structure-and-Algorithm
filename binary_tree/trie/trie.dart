class TrieNode {
  Map<String, TrieNode?> children = {};   
}

class Trie {
  TrieNode root = TrieNode();
  String endSymbol = '*';

  void insert(String str) {
    var node = root;
    for (var i = 0; i < str.length; i++) {
      var letter = str[i];
      if (!node.children.containsKey(letter)) {                               //prefix
        TrieNode newNode = TrieNode();
        node.children.addAll({letter:newNode});
      }
      node = node.children[letter]!;
    }
    
  }

  bool contains(String str) {
    var node = root;
    for (var i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node.children.containsKey(letter)) {
        return false;
      }
      node = node.children[letter]!;
    }
    return true;
  }

  // prefix search

    List<String> prefixSearch(String prefix) {
    var node = root;
    for (var i = 0; i < prefix.length; i++) {
      String letter = prefix[i];
      if (!node.children.containsKey(letter)) {
        return [];
      }
      node = node.children[letter]!;
    }
    return _getAllWords(node, prefix);
  }

  List<String> _getAllWords(TrieNode node, String prefix) {
    List<String> results = [];
    if (node.children.isEmpty) {
      results.add(prefix);
      return results;
    }

    if (node.children.containsKey(endSymbol)) {
      results.add(prefix);
    }

    for (var entry in node.children.entries) {
      String letter = entry.key;
      TrieNode childNode = entry.value!;
      List<String> childWords = _getAllWords(childNode, prefix + letter);
      results.addAll(childWords);
    }

    return results;
  }
}

void main() {
  Trie tr = Trie();
  tr.insert('application');
  tr.insert('apple');

  // print(tr.contains("appl"));
  print(tr.prefixSearch('apple'));
}
