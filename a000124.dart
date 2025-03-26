List<int> generateA000124(int n) {
  List<int> result = [];
  int current = 1;
  for (int i = 0; i < n; i++) {
    result.add(current);
    current += i + 1;
  }
  return result;
}

void main() {
  print(generateA000124(7)); 
  print(generateA000124(5)); 
  print(generateA000124(10)); 
}