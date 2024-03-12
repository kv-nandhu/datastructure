class CountCharacter {
  void countChar(String text) {
    int i = 0;
    String s = "";
    while (i < text.length) {
      int k = 1;
      while (i + k < text.length && text[i] == text[i + k]) {
        k++;
      }
      s = s + k.toString() + text[i];
      i = i + k;
    }
    print(s);
  }
  static void main() {
    CountCharacter inString = CountCharacter();
    inString.countChar("AAABBCDD");
  }
}

void main() {
  CountCharacter.main();
}
