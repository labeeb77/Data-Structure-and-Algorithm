import 'dart:collection';
import 'dart:io';

class Graph {
  Map<num, List<dynamic>> map = HashMap();

  void create(num data) {
    map.addAll({data: []});
  }

  void insert(int vertex, int edge, bool isBiDirectional) {
    if (!map.containsKey(vertex)) {
      create(vertex);
    }

    if (!map.containsKey(edge)) {
      create(edge);
    }

    map[vertex]?.add(edge);

    if (isBiDirectional) {
      map[edge]?.add(vertex);
    }
  }

  void display() {
    for (var x in map.keys) {
      stdout.write('$x :');
      for (var y in map[x]!) {
        stdout.write(' $y');
      }
      print('');
    }
  }

  void deleteNode(int data) {
    map.remove(data);

    for (var x in map.values) {
      if (x.contains(data)) {
        x.remove(data);
      }
    }
  }

  void deleteEdge(int vertex1, int vertex2) {
    if (map[vertex1]!.contains(vertex2)) {
      map[vertex1]!.remove(vertex2);
    }
  }

  // BFS
  void bfs(int start){
    Set<num>visited = Set();
    Queue<num>queue = Queue();

    visited.add(start);
    queue.add(start);

    while(queue.isNotEmpty){
      var vertex = queue.removeFirst();
      stdout.write('$vertex');

      for(var neighbour in map[vertex]!){
        if(!visited.contains(neighbour)){
          visited.add(neighbour);
          queue.add(neighbour);

        }
      }
    }
    print('');
  }

  // DFS

   void dfs(int start) {
    Set<num> visited = Set();
    dfsUtil(start, visited);
    print('');
  }

   void dfsUtil(num vertex, Set<num> visited) {
    visited.add(vertex);
    stdout.write('$vertex ');

    for (var neighbor in map[vertex]!) {
      if (!visited.contains(neighbor)) {
        dfsUtil(neighbor, visited);
      }
    }
  }
}

void main(List<String> arguments) {
  Graph graph = Graph();
  graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 4, true);
  graph.insert(5, 6, false);
  graph.insert(6, 3, false);
  //graph.display();
  // graph.bfs(3);
  // graph.dfs(3);
  // graph.deleteEdge(3, 5);
  graph.deleteNode(5);
  graph.display();
}