String isBalanced(String input) {
  List<String> stack = [];
  Map<String, String> bracketPairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if ('({['.contains(char)) {
      stack.add(char); 
    } else if (')}]'.contains(char)) {
      if (stack.isEmpty || stack.last != bracketPairs[char]) {
        return "NO";
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty ? "YES" : "NO";
}

void main() {
  print(isBalanced("{[()]}"));
  print(isBalanced("{[(])}")); 
  print(isBalanced("{{([])[{}]}}")); 
}