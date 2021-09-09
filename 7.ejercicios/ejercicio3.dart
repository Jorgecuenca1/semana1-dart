void main() {
  List<dynamic> lista = ["radar", "radar", "oso", "diana", "jorge"];
  for (var e in lista) {
    String name = e;
    List<int> repetida = name.runes.toList();

    print(checkpallindrom(repetida));
  }
}

bool checkpallindrom(List<int> repetida) {
  for (int i = repetida.length - 1, j = 0;
      i >= repetida.length ~/ 2;
      i--, j++) {
    if (repetida[i] != repetida[j]) return false;
  }
  return true;
}
