import 'dart:math';

void main() {
  var random = new Random();
  List<dynamic> lista = [
    random.nextInt(10),
    random.nextInt(10),
    random.nextInt(10),
    random.nextInt(10),
    random.nextInt(10),
    random.nextInt(10)
  ];

  num sum = 0;
  for (num e in lista) {
    sum += e;
  }
  sum = sum / 6;
  print("promedio $sum");

  print(lista[0] + lista[1]);
  print("lista $lista");
  print("Mayor: ");
  print(lista.reduce((curr, next) => curr > next ? curr : next)); // 8 --> Max
  print("Menor: ");
  print(lista.reduce((curr, next) => curr < next ? curr : next));
}
